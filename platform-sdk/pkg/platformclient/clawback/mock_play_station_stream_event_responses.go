// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clawback

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// MockPlayStationStreamEventReader is a Reader for the MockPlayStationStreamEvent structure.
type MockPlayStationStreamEventReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MockPlayStationStreamEventReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMockPlayStationStreamEventOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMockPlayStationStreamEventOK creates a MockPlayStationStreamEventOK with default headers values
func NewMockPlayStationStreamEventOK() *MockPlayStationStreamEventOK {
	return &MockPlayStationStreamEventOK{}
}

/*MockPlayStationStreamEventOK handles this case with default header values.

  successful operation
*/
type MockPlayStationStreamEventOK struct {
}

func (o *MockPlayStationStreamEventOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock][%d] mockPlayStationStreamEventOK ", 200)
}

func (o *MockPlayStationStreamEventOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
