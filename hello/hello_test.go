package hello_test

import (
	"testing"

	"github.com/chrisjpalmer/github-actions-poc/hello"
)

func TestSayer_Say(t *testing.T) {
	tests := []struct {
		name string
		want string
	}{
		{name: "Says hello world", want: "Hello, world!"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := hello.Sayer{}
			if got := s.Say(); got != tt.want {
				t.Errorf("Sayer.Say() = %v, want %v", got, tt.want)
			}
		})
	}
}
