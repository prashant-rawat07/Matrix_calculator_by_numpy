import numpy as np

def input_matrix(name):
    r = int(input("Enter nubers of row: "))
    c = int(input("Enter numbers of column: "))
    elements=[]
    for i in range(r):
        row=[]
        for j in range(c):
            element = int(input("Enter element: "))
            row.append(element)
        elements.append(row)
    arr=np.array(elements)
    return arr
A=input_matrix("Matrix A")
print( "Matrix A",A)
B=input_matrix("Matrix B")
print("Matrix B",B)

while True:
    print("1. Multiplication of two matrix: Press 1")
    print("2. Addition of two matrix: Press 2")
    print("3. Subtraction of two matrix: Press 3")
    print("4. Transpose of a matrix: press 4")
    print("5. Determinant of a matrix: press 5")
    print("6. inverse of a matrix: press 6")
    print("7. Rank of a matrix: press 7")
    print("8. Eignvalue and vector : press 8")
    print("9. for exist : Press 9")
    choice = int(input("Enter your choice: "))
    if choice == 1:
        print("A * B = ", np.dot(A,B))
    elif choice == 2:
        print("A + B =", A+B)
    elif choice == 3:
        print("A - B =", A-B)
    elif choice == 4:
        print("Transpose of A=",A.T)
        print("Transpose of B=",B.T)
    elif choice == 5:
        print("Determinant of A", np.linalg.det(A))
        print("determinant of B", np.linalg.det(B))
    elif choice == 6:
        if np.linalg.det(A)==0:
            print("inverse not exist for A")
        else:
            print("Inverse of A", np.linalg.inv(A))
        if np.linalg.det(B)==0:
            print("Inverse not exist for B")
        else:
            print("Inverse of B", np.linalg.inv(B))
    elif choice == 7:
        print("Rank of matrix A:", np.linalg.matrix_rank(A))
        print("Rank of matrix B:", np.linalg.matrix_rank(B))
    elif choice == 8:
        print("Egienvalues and eigenvector:", np.linalg.eig(A))
        print("Eigenvalues and eigenvector:", np.linalg.eig(B))
    elif choice == 9:
        print("Exiting.....")
        break
    else:
        print("Invalid choice!!!!!!")

    