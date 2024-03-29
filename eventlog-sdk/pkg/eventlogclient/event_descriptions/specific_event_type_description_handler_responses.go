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

// SpecificEventTypeDescriptionHandlerReader is a Reader for the SpecificEventTypeDescriptionHandler structure.
type SpecificEventTypeDescriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SpecificEventTypeDescriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSpecificEventTypeDescriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSpecificEventTypeDescriptionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSpecificEventTypeDescriptionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/descriptions/eventType/listByEventTypes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSpecificEventTypeDescriptionHandlerOK creates a SpecificEventTypeDescriptionHandlerOK with default headers values
func NewSpecificEventTypeDescriptionHandlerOK() *SpecificEventTypeDescriptionHandlerOK {
	return &SpecificEventTypeDescriptionHandlerOK{}
}

/*SpecificEventTypeDescriptionHandlerOK handles this case with default header values.

  OK
*/
type SpecificEventTypeDescriptionHandlerOK struct {
	Payload *eventlogclientmodels.ModelsMultipleEventType
}

func (o *SpecificEventTypeDescriptionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventType/listByEventTypes][%d] specificEventTypeDescriptionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *SpecificEventTypeDescriptionHandlerOK) ToJSONString() string {
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

func (o *SpecificEventTypeDescriptionHandlerOK) GetPayload() *eventlogclientmodels.ModelsMultipleEventType {
	return o.Payload
}

func (o *SpecificEventTypeDescriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsMultipleEventType)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSpecificEventTypeDescriptionHandlerBadRequest creates a SpecificEventTypeDescriptionHandlerBadRequest with default headers values
func NewSpecificEventTypeDescriptionHandlerBadRequest() *SpecificEventTypeDescriptionHandlerBadRequest {
	return &SpecificEventTypeDescriptionHandlerBadRequest{}
}

/*SpecificEventTypeDescriptionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type SpecificEventTypeDescriptionHandlerBadRequest struct {
}

func (o *SpecificEventTypeDescriptionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventType/listByEventTypes][%d] specificEventTypeDescriptionHandlerBadRequest ", 400)
}

func (o *SpecificEventTypeDescriptionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSpecificEventTypeDescriptionHandlerNotFound creates a SpecificEventTypeDescriptionHandlerNotFound with default headers values
func NewSpecificEventTypeDescriptionHandlerNotFound() *SpecificEventTypeDescriptionHandlerNotFound {
	return &SpecificEventTypeDescriptionHandlerNotFound{}
}

/*SpecificEventTypeDescriptionHandlerNotFound handles this case with default header values.

  Not Found
*/
type SpecificEventTypeDescriptionHandlerNotFound struct {
}

func (o *SpecificEventTypeDescriptionHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventType/listByEventTypes][%d] specificEventTypeDescriptionHandlerNotFound ", 404)
}

func (o *SpecificEventTypeDescriptionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
