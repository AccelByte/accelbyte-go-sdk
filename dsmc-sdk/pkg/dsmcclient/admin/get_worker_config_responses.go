// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// GetWorkerConfigReader is a Reader for the GetWorkerConfig structure.
type GetWorkerConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetWorkerConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetWorkerConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetWorkerConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetWorkerConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetWorkerConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetWorkerConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespace/{namespace}/workers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetWorkerConfigOK creates a GetWorkerConfigOK with default headers values
func NewGetWorkerConfigOK() *GetWorkerConfigOK {
	return &GetWorkerConfigOK{}
}

/*GetWorkerConfigOK handles this case with default header values.

  The worker configuration has been successfully retrieved.
*/
type GetWorkerConfigOK struct {
	Payload *dsmcclientmodels.ModelsWorkerConfig
}

func (o *GetWorkerConfigOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespace/{namespace}/workers][%d] getWorkerConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetWorkerConfigOK) ToJSONString() string {
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

func (o *GetWorkerConfigOK) GetPayload() *dsmcclientmodels.ModelsWorkerConfig {
	return o.Payload
}

func (o *GetWorkerConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsWorkerConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetWorkerConfigBadRequest creates a GetWorkerConfigBadRequest with default headers values
func NewGetWorkerConfigBadRequest() *GetWorkerConfigBadRequest {
	return &GetWorkerConfigBadRequest{}
}

/*GetWorkerConfigBadRequest handles this case with default header values.

  Bad Request
*/
type GetWorkerConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetWorkerConfigBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespace/{namespace}/workers][%d] getWorkerConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetWorkerConfigBadRequest) ToJSONString() string {
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

func (o *GetWorkerConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetWorkerConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetWorkerConfigUnauthorized creates a GetWorkerConfigUnauthorized with default headers values
func NewGetWorkerConfigUnauthorized() *GetWorkerConfigUnauthorized {
	return &GetWorkerConfigUnauthorized{}
}

/*GetWorkerConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetWorkerConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetWorkerConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespace/{namespace}/workers][%d] getWorkerConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetWorkerConfigUnauthorized) ToJSONString() string {
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

func (o *GetWorkerConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetWorkerConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetWorkerConfigNotFound creates a GetWorkerConfigNotFound with default headers values
func NewGetWorkerConfigNotFound() *GetWorkerConfigNotFound {
	return &GetWorkerConfigNotFound{}
}

/*GetWorkerConfigNotFound handles this case with default header values.

  Not Found
*/
type GetWorkerConfigNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetWorkerConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespace/{namespace}/workers][%d] getWorkerConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetWorkerConfigNotFound) ToJSONString() string {
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

func (o *GetWorkerConfigNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetWorkerConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetWorkerConfigInternalServerError creates a GetWorkerConfigInternalServerError with default headers values
func NewGetWorkerConfigInternalServerError() *GetWorkerConfigInternalServerError {
	return &GetWorkerConfigInternalServerError{}
}

/*GetWorkerConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetWorkerConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetWorkerConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespace/{namespace}/workers][%d] getWorkerConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetWorkerConfigInternalServerError) ToJSONString() string {
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

func (o *GetWorkerConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetWorkerConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
