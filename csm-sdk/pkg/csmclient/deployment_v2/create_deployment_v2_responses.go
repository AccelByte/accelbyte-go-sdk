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

// CreateDeploymentV2Reader is a Reader for the CreateDeploymentV2 structure.
type CreateDeploymentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateDeploymentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateDeploymentV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateDeploymentV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateDeploymentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateDeploymentV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateDeploymentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateDeploymentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateDeploymentV2Created creates a CreateDeploymentV2Created with default headers values
func NewCreateDeploymentV2Created() *CreateDeploymentV2Created {
	return &CreateDeploymentV2Created{}
}

/*CreateDeploymentV2Created handles this case with default header values.


 */
type CreateDeploymentV2Created struct {
	Payload *csmclientmodels.ApimodelCreateDeploymentV2Response
}

func (o *CreateDeploymentV2Created) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV2Created  %+v", 201, o.ToJSONString())
}

func (o *CreateDeploymentV2Created) ToJSONString() string {
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

func (o *CreateDeploymentV2Created) GetPayload() *csmclientmodels.ApimodelCreateDeploymentV2Response {
	return o.Payload
}

func (o *CreateDeploymentV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelCreateDeploymentV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentV2BadRequest creates a CreateDeploymentV2BadRequest with default headers values
func NewCreateDeploymentV2BadRequest() *CreateDeploymentV2BadRequest {
	return &CreateDeploymentV2BadRequest{}
}

/*CreateDeploymentV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateDeploymentV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateDeploymentV2BadRequest) ToJSONString() string {
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

func (o *CreateDeploymentV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV2Unauthorized creates a CreateDeploymentV2Unauthorized with default headers values
func NewCreateDeploymentV2Unauthorized() *CreateDeploymentV2Unauthorized {
	return &CreateDeploymentV2Unauthorized{}
}

/*CreateDeploymentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateDeploymentV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateDeploymentV2Unauthorized) ToJSONString() string {
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

func (o *CreateDeploymentV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV2Forbidden creates a CreateDeploymentV2Forbidden with default headers values
func NewCreateDeploymentV2Forbidden() *CreateDeploymentV2Forbidden {
	return &CreateDeploymentV2Forbidden{}
}

/*CreateDeploymentV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateDeploymentV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateDeploymentV2Forbidden) ToJSONString() string {
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

func (o *CreateDeploymentV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV2NotFound creates a CreateDeploymentV2NotFound with default headers values
func NewCreateDeploymentV2NotFound() *CreateDeploymentV2NotFound {
	return &CreateDeploymentV2NotFound{}
}

/*CreateDeploymentV2NotFound handles this case with default header values.

  Not Found
*/
type CreateDeploymentV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateDeploymentV2NotFound) ToJSONString() string {
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

func (o *CreateDeploymentV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV2InternalServerError creates a CreateDeploymentV2InternalServerError with default headers values
func NewCreateDeploymentV2InternalServerError() *CreateDeploymentV2InternalServerError {
	return &CreateDeploymentV2InternalServerError{}
}

/*CreateDeploymentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateDeploymentV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateDeploymentV2InternalServerError) ToJSONString() string {
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

func (o *CreateDeploymentV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
