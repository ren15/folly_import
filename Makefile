.PHONY: $(MAKECMDGOALS)

REPO_DIR=${PWD}
BUILD_DIR=${REPO_DIR}/build
SOURCE_DIR=${REPO_DIR}/cxx

help:
	echo "Check Makefile"

configure:
	cmake -E make_directory ${BUILD_DIR}

	conan install ${SOURCE_DIR} --build=missing -if=${BUILD_DIR} 

	cmake -S ${SOURCE_DIR} -B ${BUILD_DIR} \
		-DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
		-DCMAKE_BUILD_TYPE=Release \
		-G Ninja

	ln -f -s ${BUILD_DIR}/compile_commands.json \
		${SOURCE_DIR}/compile_commands.json

build:
	cmake --build ${BUILD_DIR} -j
	
run: 
	${BUILD_DIR}/bin/main
bench:
	${BUILD_DIR}/bin/mathop_bench
	${BUILD_DIR}/bin/dag_bench

clean:
	rm -rf ${BUILD_DIR}