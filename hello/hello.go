package hello

type Sayer struct {}

func (s Sayer) Say() string {
	return "Hello, world!"
}