// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_config

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

// GetDeploymentReader is a Reader for the GetDeployment structure.
type GetDeploymentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDeploymentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDeploymentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetDeploymentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetDeploymentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDeploymentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetDeploymentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDeploymentOK creates a GetDeploymentOK with default headers values
func NewGetDeploymentOK() *GetDeploymentOK {
	return &GetDeploymentOK{}
}

/*GetDeploymentOK handles this case with default header values.

  ok
*/
type GetDeploymentOK struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *GetDeploymentOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentOK  %+v", 200, o.ToJSONString())
}

func (o *GetDeploymentOK) ToJSONString() string {
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

func (o *GetDeploymentOK) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *GetDeploymentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDeploymentWithOverride)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDeploymentBadRequest creates a GetDeploymentBadRequest with default headers values
func NewGetDeploymentBadRequest() *GetDeploymentBadRequest {
	return &GetDeploymentBadRequest{}
}

/*GetDeploymentBadRequest handles this case with default header values.

  malformed request
*/
type GetDeploymentBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetDeploymentBadRequest) ToJSONString() string {
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

func (o *GetDeploymentBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetDeploymentUnauthorized creates a GetDeploymentUnauthorized with default headers values
func NewGetDeploymentUnauthorized() *GetDeploymentUnauthorized {
	return &GetDeploymentUnauthorized{}
}

/*GetDeploymentUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetDeploymentUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetDeploymentUnauthorized) ToJSONString() string {
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

func (o *GetDeploymentUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetDeploymentNotFound creates a GetDeploymentNotFound with default headers values
func NewGetDeploymentNotFound() *GetDeploymentNotFound {
	return &GetDeploymentNotFound{}
}

/*GetDeploymentNotFound handles this case with default header values.

  deployment not found
*/
type GetDeploymentNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetDeploymentNotFound) ToJSONString() string {
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

func (o *GetDeploymentNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetDeploymentInternalServerError creates a GetDeploymentInternalServerError with default headers values
func NewGetDeploymentInternalServerError() *GetDeploymentInternalServerError {
	return &GetDeploymentInternalServerError{}
}

/*GetDeploymentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetDeploymentInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetDeploymentInternalServerError) ToJSONString() string {
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

func (o *GetDeploymentInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
