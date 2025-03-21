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

// GetAllDeploymentReader is a Reader for the GetAllDeployment structure.
type GetAllDeploymentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllDeploymentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllDeploymentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllDeploymentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllDeploymentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllDeploymentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllDeploymentOK creates a GetAllDeploymentOK with default headers values
func NewGetAllDeploymentOK() *GetAllDeploymentOK {
	return &GetAllDeploymentOK{}
}

/*GetAllDeploymentOK handles this case with default header values.

  ok
*/
type GetAllDeploymentOK struct {
	Payload *dsmcclientmodels.ModelsListDeploymentResponse
}

func (o *GetAllDeploymentOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllDeploymentOK) ToJSONString() string {
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

func (o *GetAllDeploymentOK) GetPayload() *dsmcclientmodels.ModelsListDeploymentResponse {
	return o.Payload
}

func (o *GetAllDeploymentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsListDeploymentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllDeploymentBadRequest creates a GetAllDeploymentBadRequest with default headers values
func NewGetAllDeploymentBadRequest() *GetAllDeploymentBadRequest {
	return &GetAllDeploymentBadRequest{}
}

/*GetAllDeploymentBadRequest handles this case with default header values.

  malformed request
*/
type GetAllDeploymentBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllDeploymentBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllDeploymentBadRequest) ToJSONString() string {
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

func (o *GetAllDeploymentBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllDeploymentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllDeploymentUnauthorized creates a GetAllDeploymentUnauthorized with default headers values
func NewGetAllDeploymentUnauthorized() *GetAllDeploymentUnauthorized {
	return &GetAllDeploymentUnauthorized{}
}

/*GetAllDeploymentUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllDeploymentUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllDeploymentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllDeploymentUnauthorized) ToJSONString() string {
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

func (o *GetAllDeploymentUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllDeploymentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllDeploymentInternalServerError creates a GetAllDeploymentInternalServerError with default headers values
func NewGetAllDeploymentInternalServerError() *GetAllDeploymentInternalServerError {
	return &GetAllDeploymentInternalServerError{}
}

/*GetAllDeploymentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllDeploymentInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllDeploymentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllDeploymentInternalServerError) ToJSONString() string {
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

func (o *GetAllDeploymentInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllDeploymentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
