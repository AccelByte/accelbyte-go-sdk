// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_v2

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

// GetDeploymentV2Reader is a Reader for the GetDeploymentV2 structure.
type GetDeploymentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDeploymentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDeploymentV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetDeploymentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetDeploymentV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDeploymentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetDeploymentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDeploymentV2OK creates a GetDeploymentV2OK with default headers values
func NewGetDeploymentV2OK() *GetDeploymentV2OK {
	return &GetDeploymentV2OK{}
}

/*GetDeploymentV2OK handles this case with default header values.


 */
type GetDeploymentV2OK struct {
	Payload *csmclientmodels.ApimodelGetDeploymentListV2DataItem
}

func (o *GetDeploymentV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetDeploymentV2OK) ToJSONString() string {
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

func (o *GetDeploymentV2OK) GetPayload() *csmclientmodels.ApimodelGetDeploymentListV2DataItem {
	return o.Payload
}

func (o *GetDeploymentV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetDeploymentListV2DataItem)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDeploymentV2Unauthorized creates a GetDeploymentV2Unauthorized with default headers values
func NewGetDeploymentV2Unauthorized() *GetDeploymentV2Unauthorized {
	return &GetDeploymentV2Unauthorized{}
}

/*GetDeploymentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetDeploymentV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetDeploymentV2Unauthorized) ToJSONString() string {
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

func (o *GetDeploymentV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetDeploymentV2Forbidden creates a GetDeploymentV2Forbidden with default headers values
func NewGetDeploymentV2Forbidden() *GetDeploymentV2Forbidden {
	return &GetDeploymentV2Forbidden{}
}

/*GetDeploymentV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetDeploymentV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetDeploymentV2Forbidden) ToJSONString() string {
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

func (o *GetDeploymentV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetDeploymentV2NotFound creates a GetDeploymentV2NotFound with default headers values
func NewGetDeploymentV2NotFound() *GetDeploymentV2NotFound {
	return &GetDeploymentV2NotFound{}
}

/*GetDeploymentV2NotFound handles this case with default header values.

  Not Found
*/
type GetDeploymentV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetDeploymentV2NotFound) ToJSONString() string {
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

func (o *GetDeploymentV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetDeploymentV2InternalServerError creates a GetDeploymentV2InternalServerError with default headers values
func NewGetDeploymentV2InternalServerError() *GetDeploymentV2InternalServerError {
	return &GetDeploymentV2InternalServerError{}
}

/*GetDeploymentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetDeploymentV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetDeploymentV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] getDeploymentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetDeploymentV2InternalServerError) ToJSONString() string {
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

func (o *GetDeploymentV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetDeploymentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
