// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_descriptions

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// SpecificUXDescriptionHandlerReader is a Reader for the SpecificUXDescriptionHandler structure.
type SpecificUXDescriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SpecificUXDescriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSpecificUXDescriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSpecificUXDescriptionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSpecificUXDescriptionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/descriptions/ux/listByUx returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSpecificUXDescriptionHandlerOK creates a SpecificUXDescriptionHandlerOK with default headers values
func NewSpecificUXDescriptionHandlerOK() *SpecificUXDescriptionHandlerOK {
	return &SpecificUXDescriptionHandlerOK{}
}

/*SpecificUXDescriptionHandlerOK handles this case with default header values.

  OK
*/
type SpecificUXDescriptionHandlerOK struct {
	Payload *eventlogclientmodels.ModelsMultipleUX
}

func (o *SpecificUXDescriptionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/ux/listByUx][%d] specificUXDescriptionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *SpecificUXDescriptionHandlerOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *SpecificUXDescriptionHandlerOK) GetPayload() *eventlogclientmodels.ModelsMultipleUX {
	return o.Payload
}

func (o *SpecificUXDescriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsMultipleUX)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSpecificUXDescriptionHandlerBadRequest creates a SpecificUXDescriptionHandlerBadRequest with default headers values
func NewSpecificUXDescriptionHandlerBadRequest() *SpecificUXDescriptionHandlerBadRequest {
	return &SpecificUXDescriptionHandlerBadRequest{}
}

/*SpecificUXDescriptionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type SpecificUXDescriptionHandlerBadRequest struct {
}

func (o *SpecificUXDescriptionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/ux/listByUx][%d] specificUXDescriptionHandlerBadRequest ", 400)
}

func (o *SpecificUXDescriptionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSpecificUXDescriptionHandlerNotFound creates a SpecificUXDescriptionHandlerNotFound with default headers values
func NewSpecificUXDescriptionHandlerNotFound() *SpecificUXDescriptionHandlerNotFound {
	return &SpecificUXDescriptionHandlerNotFound{}
}

/*SpecificUXDescriptionHandlerNotFound handles this case with default header values.

  Not Found
*/
type SpecificUXDescriptionHandlerNotFound struct {
}

func (o *SpecificUXDescriptionHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/ux/listByUx][%d] specificUXDescriptionHandlerNotFound ", 404)
}

func (o *SpecificUXDescriptionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
