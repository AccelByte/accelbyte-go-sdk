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

// GetDeploymentClientReader is a Reader for the GetDeploymentClient structure.
type GetDeploymentClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDeploymentClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDeploymentClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetDeploymentClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetDeploymentClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDeploymentClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetDeploymentClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDeploymentClientOK creates a GetDeploymentClientOK with default headers values
func NewGetDeploymentClientOK() *GetDeploymentClientOK {
	return &GetDeploymentClientOK{}
}

/*GetDeploymentClientOK handles this case with default header values.

  ok
*/
type GetDeploymentClientOK struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *GetDeploymentClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentClientOK  %+v", 200, o.ToJSONString())
}

func (o *GetDeploymentClientOK) ToJSONString() string {
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

func (o *GetDeploymentClientOK) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *GetDeploymentClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetDeploymentClientBadRequest creates a GetDeploymentClientBadRequest with default headers values
func NewGetDeploymentClientBadRequest() *GetDeploymentClientBadRequest {
	return &GetDeploymentClientBadRequest{}
}

/*GetDeploymentClientBadRequest handles this case with default header values.

  malformed request
*/
type GetDeploymentClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentClientBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetDeploymentClientBadRequest) ToJSONString() string {
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

func (o *GetDeploymentClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetDeploymentClientUnauthorized creates a GetDeploymentClientUnauthorized with default headers values
func NewGetDeploymentClientUnauthorized() *GetDeploymentClientUnauthorized {
	return &GetDeploymentClientUnauthorized{}
}

/*GetDeploymentClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetDeploymentClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetDeploymentClientUnauthorized) ToJSONString() string {
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

func (o *GetDeploymentClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetDeploymentClientNotFound creates a GetDeploymentClientNotFound with default headers values
func NewGetDeploymentClientNotFound() *GetDeploymentClientNotFound {
	return &GetDeploymentClientNotFound{}
}

/*GetDeploymentClientNotFound handles this case with default header values.

  deployment not found
*/
type GetDeploymentClientNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentClientNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetDeploymentClientNotFound) ToJSONString() string {
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

func (o *GetDeploymentClientNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetDeploymentClientInternalServerError creates a GetDeploymentClientInternalServerError with default headers values
func NewGetDeploymentClientInternalServerError() *GetDeploymentClientInternalServerError {
	return &GetDeploymentClientInternalServerError{}
}

/*GetDeploymentClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetDeploymentClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetDeploymentClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] getDeploymentClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetDeploymentClientInternalServerError) ToJSONString() string {
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

func (o *GetDeploymentClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetDeploymentClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
