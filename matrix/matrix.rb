class Matrix

  def sub_square_area(data)
    response = response_matrix(data)
    return calc_area(response)
  end

  private
  def response_matrix(matrix)
    response = init_response_matrix(matrix.size)
    matrix.each_with_index do |line, x|
      line.each_with_index do |value, y|
        a = response[x][y]
        b = response[x+1][y]
        c = response[x][y+1]
        response[x+1][y+1] = (value==1) ? [a,b,c].min + 1 : 0
      end
    end
    response
  end

  def init_response_matrix(size)
    Array.new(size+1) {Array.new(size+1, 0)}
  end

  def calc_area(matrix)
    (matrix.map { |x| x.max}.max) ** 2
  end

end
