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

// GetAllDeploymentClientReader is a Reader for the GetAllDeploymentClient structure.
type GetAllDeploymentClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllDeploymentClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllDeploymentClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllDeploymentClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllDeploymentClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllDeploymentClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/configs/deployments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllDeploymentClientOK creates a GetAllDeploymentClientOK with default headers values
func NewGetAllDeploymentClientOK() *GetAllDeploymentClientOK {
	return &GetAllDeploymentClientOK{}
}

/*GetAllDeploymentClientOK handles this case with default header values.

  ok
*/
type GetAllDeploymentClientOK struct {
	Payload *dsmcclientmodels.ModelsListDeploymentResponse
}

func (o *GetAllDeploymentClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentClientOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllDeploymentClientOK) ToJSONString() string {
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

func (o *GetAllDeploymentClientOK) GetPayload() *dsmcclientmodels.ModelsListDeploymentResponse {
	return o.Payload
}

func (o *GetAllDeploymentClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllDeploymentClientBadRequest creates a GetAllDeploymentClientBadRequest with default headers values
func NewGetAllDeploymentClientBadRequest() *GetAllDeploymentClientBadRequest {
	return &GetAllDeploymentClientBadRequest{}
}

/*GetAllDeploymentClientBadRequest handles this case with default header values.

  malformed request
*/
type GetAllDeploymentClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllDeploymentClientBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllDeploymentClientBadRequest) ToJSONString() string {
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

func (o *GetAllDeploymentClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllDeploymentClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllDeploymentClientUnauthorized creates a GetAllDeploymentClientUnauthorized with default headers values
func NewGetAllDeploymentClientUnauthorized() *GetAllDeploymentClientUnauthorized {
	return &GetAllDeploymentClientUnauthorized{}
}

/*GetAllDeploymentClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllDeploymentClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllDeploymentClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllDeploymentClientUnauthorized) ToJSONString() string {
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

func (o *GetAllDeploymentClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllDeploymentClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllDeploymentClientInternalServerError creates a GetAllDeploymentClientInternalServerError with default headers values
func NewGetAllDeploymentClientInternalServerError() *GetAllDeploymentClientInternalServerError {
	return &GetAllDeploymentClientInternalServerError{}
}

/*GetAllDeploymentClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllDeploymentClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllDeploymentClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments][%d] getAllDeploymentClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllDeploymentClientInternalServerError) ToJSONString() string {
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

func (o *GetAllDeploymentClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllDeploymentClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
