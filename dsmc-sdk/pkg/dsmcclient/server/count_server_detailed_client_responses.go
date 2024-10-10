// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// CountServerDetailedClientReader is a Reader for the CountServerDetailedClient structure.
type CountServerDetailedClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CountServerDetailedClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCountServerDetailedClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCountServerDetailedClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCountServerDetailedClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/servers/count/detailed returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCountServerDetailedClientOK creates a CountServerDetailedClientOK with default headers values
func NewCountServerDetailedClientOK() *CountServerDetailedClientOK {
	return &CountServerDetailedClientOK{}
}

/*CountServerDetailedClientOK handles this case with default header values.

  servers listed
*/
type CountServerDetailedClientOK struct {
	Payload *dsmcclientmodels.ModelsDetailedCountServerResponse
}

func (o *CountServerDetailedClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/count/detailed][%d] countServerDetailedClientOK  %+v", 200, o.ToJSONString())
}

func (o *CountServerDetailedClientOK) ToJSONString() string {
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

func (o *CountServerDetailedClientOK) GetPayload() *dsmcclientmodels.ModelsDetailedCountServerResponse {
	return o.Payload
}

func (o *CountServerDetailedClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDetailedCountServerResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCountServerDetailedClientUnauthorized creates a CountServerDetailedClientUnauthorized with default headers values
func NewCountServerDetailedClientUnauthorized() *CountServerDetailedClientUnauthorized {
	return &CountServerDetailedClientUnauthorized{}
}

/*CountServerDetailedClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type CountServerDetailedClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CountServerDetailedClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/count/detailed][%d] countServerDetailedClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CountServerDetailedClientUnauthorized) ToJSONString() string {
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

func (o *CountServerDetailedClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CountServerDetailedClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCountServerDetailedClientInternalServerError creates a CountServerDetailedClientInternalServerError with default headers values
func NewCountServerDetailedClientInternalServerError() *CountServerDetailedClientInternalServerError {
	return &CountServerDetailedClientInternalServerError{}
}

/*CountServerDetailedClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CountServerDetailedClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CountServerDetailedClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/count/detailed][%d] countServerDetailedClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CountServerDetailedClientInternalServerError) ToJSONString() string {
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

func (o *CountServerDetailedClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CountServerDetailedClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
