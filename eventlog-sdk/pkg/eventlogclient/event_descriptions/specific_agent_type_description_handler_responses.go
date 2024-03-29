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

// SpecificAgentTypeDescriptionHandlerReader is a Reader for the SpecificAgentTypeDescriptionHandler structure.
type SpecificAgentTypeDescriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SpecificAgentTypeDescriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSpecificAgentTypeDescriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSpecificAgentTypeDescriptionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSpecificAgentTypeDescriptionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/descriptions/agentType/listByAgentTypes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSpecificAgentTypeDescriptionHandlerOK creates a SpecificAgentTypeDescriptionHandlerOK with default headers values
func NewSpecificAgentTypeDescriptionHandlerOK() *SpecificAgentTypeDescriptionHandlerOK {
	return &SpecificAgentTypeDescriptionHandlerOK{}
}

/*SpecificAgentTypeDescriptionHandlerOK handles this case with default header values.

  OK
*/
type SpecificAgentTypeDescriptionHandlerOK struct {
	Payload *eventlogclientmodels.ModelsMultipleAgentType
}

func (o *SpecificAgentTypeDescriptionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/agentType/listByAgentTypes][%d] specificAgentTypeDescriptionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *SpecificAgentTypeDescriptionHandlerOK) ToJSONString() string {
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

func (o *SpecificAgentTypeDescriptionHandlerOK) GetPayload() *eventlogclientmodels.ModelsMultipleAgentType {
	return o.Payload
}

func (o *SpecificAgentTypeDescriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsMultipleAgentType)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSpecificAgentTypeDescriptionHandlerBadRequest creates a SpecificAgentTypeDescriptionHandlerBadRequest with default headers values
func NewSpecificAgentTypeDescriptionHandlerBadRequest() *SpecificAgentTypeDescriptionHandlerBadRequest {
	return &SpecificAgentTypeDescriptionHandlerBadRequest{}
}

/*SpecificAgentTypeDescriptionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type SpecificAgentTypeDescriptionHandlerBadRequest struct {
}

func (o *SpecificAgentTypeDescriptionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/agentType/listByAgentTypes][%d] specificAgentTypeDescriptionHandlerBadRequest ", 400)
}

func (o *SpecificAgentTypeDescriptionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSpecificAgentTypeDescriptionHandlerNotFound creates a SpecificAgentTypeDescriptionHandlerNotFound with default headers values
func NewSpecificAgentTypeDescriptionHandlerNotFound() *SpecificAgentTypeDescriptionHandlerNotFound {
	return &SpecificAgentTypeDescriptionHandlerNotFound{}
}

/*SpecificAgentTypeDescriptionHandlerNotFound handles this case with default header values.

  Not Found
*/
type SpecificAgentTypeDescriptionHandlerNotFound struct {
}

func (o *SpecificAgentTypeDescriptionHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/agentType/listByAgentTypes][%d] specificAgentTypeDescriptionHandlerNotFound ", 404)
}

func (o *SpecificAgentTypeDescriptionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
