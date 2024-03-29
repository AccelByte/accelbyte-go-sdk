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

// SpecificEventLevelDescriptionHandlerReader is a Reader for the SpecificEventLevelDescriptionHandler structure.
type SpecificEventLevelDescriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SpecificEventLevelDescriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSpecificEventLevelDescriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSpecificEventLevelDescriptionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSpecificEventLevelDescriptionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/descriptions/eventLevel/listByEventLevels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSpecificEventLevelDescriptionHandlerOK creates a SpecificEventLevelDescriptionHandlerOK with default headers values
func NewSpecificEventLevelDescriptionHandlerOK() *SpecificEventLevelDescriptionHandlerOK {
	return &SpecificEventLevelDescriptionHandlerOK{}
}

/*SpecificEventLevelDescriptionHandlerOK handles this case with default header values.

  OK
*/
type SpecificEventLevelDescriptionHandlerOK struct {
	Payload *eventlogclientmodels.ModelsMultipleEventLevel
}

func (o *SpecificEventLevelDescriptionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventLevel/listByEventLevels][%d] specificEventLevelDescriptionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *SpecificEventLevelDescriptionHandlerOK) ToJSONString() string {
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

func (o *SpecificEventLevelDescriptionHandlerOK) GetPayload() *eventlogclientmodels.ModelsMultipleEventLevel {
	return o.Payload
}

func (o *SpecificEventLevelDescriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsMultipleEventLevel)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSpecificEventLevelDescriptionHandlerBadRequest creates a SpecificEventLevelDescriptionHandlerBadRequest with default headers values
func NewSpecificEventLevelDescriptionHandlerBadRequest() *SpecificEventLevelDescriptionHandlerBadRequest {
	return &SpecificEventLevelDescriptionHandlerBadRequest{}
}

/*SpecificEventLevelDescriptionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type SpecificEventLevelDescriptionHandlerBadRequest struct {
}

func (o *SpecificEventLevelDescriptionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventLevel/listByEventLevels][%d] specificEventLevelDescriptionHandlerBadRequest ", 400)
}

func (o *SpecificEventLevelDescriptionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSpecificEventLevelDescriptionHandlerNotFound creates a SpecificEventLevelDescriptionHandlerNotFound with default headers values
func NewSpecificEventLevelDescriptionHandlerNotFound() *SpecificEventLevelDescriptionHandlerNotFound {
	return &SpecificEventLevelDescriptionHandlerNotFound{}
}

/*SpecificEventLevelDescriptionHandlerNotFound handles this case with default header values.

  Not Found
*/
type SpecificEventLevelDescriptionHandlerNotFound struct {
}

func (o *SpecificEventLevelDescriptionHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventLevel/listByEventLevels][%d] specificEventLevelDescriptionHandlerNotFound ", 404)
}

func (o *SpecificEventLevelDescriptionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
