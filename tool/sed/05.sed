# 多行打印
/UNIX$/{
	N
	/\nSystem/{
		s// Operation &/
		P
		D
	}
}
