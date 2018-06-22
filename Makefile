

all:
	export LD_LIBRARY_PATH=/usr/local/lib
	protoc --cpp_out=./ Test.proto
	g++ Test.cpp  Test.pb.cc -pthread -lprotobuf -lpthread -o demo_protobuf

clean:
	rm -f Test.pb.cc Test.pb.h demo_protobuf
