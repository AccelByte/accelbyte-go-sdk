// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// ListConfigReader is a Reader for the ListConfig structure.
type ListConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/configs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListConfigOK creates a ListConfigOK with default headers values
func NewListConfigOK() *ListConfigOK {
	return &ListConfigOK{}
}

/*ListConfigOK handles this case with default header values.

  configs listed
*/
type ListConfigOK struct {
	Payload *dsmcclientmodels.ModelsListConfigResponse
}

func (o *ListConfigOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/configs][%d] listConfigOK  %+v", 200, o.ToJSONString())
}

func (o *ListConfigOK) ToJSONString() string {
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

func (o *ListConfigOK) GetPayload() *dsmcclientmodels.ModelsListConfigResponse {
	return o.Payload
}

func (o *ListConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsListConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListConfigUnauthorized creates a ListConfigUnauthorized with default headers values
func NewListConfigUnauthorized() *ListConfigUnauthorized {
	return &ListConfigUnauthorized{}
}

/*ListConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/configs][%d] listConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListConfigUnauthorized) ToJSONString() string {
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

func (o *ListConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListConfigInternalServerError creates a ListConfigInternalServerError with default headers values
func NewListConfigInternalServerError() *ListConfigInternalServerError {
	return &ListConfigInternalServerError{}
}

/*ListConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/configs][%d] listConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListConfigInternalServerError) ToJSONString() string {
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

func (o *ListConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
