// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// GetDeploymentV1Reader is a Reader for the GetDeploymentV1 structure.
type GetDeploymentV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDeploymentV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDeploymentV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetDeploymentV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetDeploymentV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDeploymentV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetDeploymentV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDeploymentV1OK creates a GetDeploymentV1OK with default headers values
func NewGetDeploymentV1OK() *GetDeploymentV1OK {
	return &GetDeploymentV1OK{}
}

/*GetDeploymentV1OK handles this case with default header values.


 */
type GetDeploymentV1OK struct {
	Payload *csmclientmodels.GeneratedGetDeploymentV1Response
}

func (o *GetDeploymentV1OK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetDeploymentV1OK) ToJSONString() string {
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

func (o *GetDeploymentV1OK) GetPayload() *csmclientmodels.GeneratedGetDeploymentV1Response {
	return o.Payload
}

func (o *GetDeploymentV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetDeploymentV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDeploymentV1Unauthorized creates a GetDeploymentV1Unauthorized with default headers values
func NewGetDeploymentV1Unauthorized() *GetDeploymentV1Unauthorized {
	return &GetDeploymentV1Unauthorized{}
}

/*GetDeploymentV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetDeploymentV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetDeploymentV1Unauthorized) ToJSONString() string {
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

func (o *GetDeploymentV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDeploymentV1Forbidden creates a GetDeploymentV1Forbidden with default headers values
func NewGetDeploymentV1Forbidden() *GetDeploymentV1Forbidden {
	return &GetDeploymentV1Forbidden{}
}

/*GetDeploymentV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetDeploymentV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetDeploymentV1Forbidden) ToJSONString() string {
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

func (o *GetDeploymentV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDeploymentV1NotFound creates a GetDeploymentV1NotFound with default headers values
func NewGetDeploymentV1NotFound() *GetDeploymentV1NotFound {
	return &GetDeploymentV1NotFound{}
}

/*GetDeploymentV1NotFound handles this case with default header values.

  Not Found
*/
type GetDeploymentV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV1NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetDeploymentV1NotFound) ToJSONString() string {
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

func (o *GetDeploymentV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDeploymentV1InternalServerError creates a GetDeploymentV1InternalServerError with default headers values
func NewGetDeploymentV1InternalServerError() *GetDeploymentV1InternalServerError {
	return &GetDeploymentV1InternalServerError{}
}

/*GetDeploymentV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetDeploymentV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetDeploymentV1InternalServerError) ToJSONString() string {
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

func (o *GetDeploymentV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
