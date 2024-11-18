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

// CreateDeploymentV1Reader is a Reader for the CreateDeploymentV1 structure.
type CreateDeploymentV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateDeploymentV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateDeploymentV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateDeploymentV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateDeploymentV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateDeploymentV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateDeploymentV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateDeploymentV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateDeploymentV1Created creates a CreateDeploymentV1Created with default headers values
func NewCreateDeploymentV1Created() *CreateDeploymentV1Created {
	return &CreateDeploymentV1Created{}
}

/*CreateDeploymentV1Created handles this case with default header values.


 */
type CreateDeploymentV1Created struct {
	Payload *csmclientmodels.GeneratedCreateDeploymentV1Response
}

func (o *CreateDeploymentV1Created) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateDeploymentV1Created) ToJSONString() string {
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

func (o *CreateDeploymentV1Created) GetPayload() *csmclientmodels.GeneratedCreateDeploymentV1Response {
	return o.Payload
}

func (o *CreateDeploymentV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedCreateDeploymentV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentV1BadRequest creates a CreateDeploymentV1BadRequest with default headers values
func NewCreateDeploymentV1BadRequest() *CreateDeploymentV1BadRequest {
	return &CreateDeploymentV1BadRequest{}
}

/*CreateDeploymentV1BadRequest handles this case with default header values.

  Bad Request
*/
type CreateDeploymentV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateDeploymentV1BadRequest) ToJSONString() string {
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

func (o *CreateDeploymentV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV1Unauthorized creates a CreateDeploymentV1Unauthorized with default headers values
func NewCreateDeploymentV1Unauthorized() *CreateDeploymentV1Unauthorized {
	return &CreateDeploymentV1Unauthorized{}
}

/*CreateDeploymentV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateDeploymentV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateDeploymentV1Unauthorized) ToJSONString() string {
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

func (o *CreateDeploymentV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV1Forbidden creates a CreateDeploymentV1Forbidden with default headers values
func NewCreateDeploymentV1Forbidden() *CreateDeploymentV1Forbidden {
	return &CreateDeploymentV1Forbidden{}
}

/*CreateDeploymentV1Forbidden handles this case with default header values.

  Forbidden
*/
type CreateDeploymentV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateDeploymentV1Forbidden) ToJSONString() string {
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

func (o *CreateDeploymentV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV1NotFound creates a CreateDeploymentV1NotFound with default headers values
func NewCreateDeploymentV1NotFound() *CreateDeploymentV1NotFound {
	return &CreateDeploymentV1NotFound{}
}

/*CreateDeploymentV1NotFound handles this case with default header values.

  Not Found
*/
type CreateDeploymentV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV1NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateDeploymentV1NotFound) ToJSONString() string {
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

func (o *CreateDeploymentV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentV1InternalServerError creates a CreateDeploymentV1InternalServerError with default headers values
func NewCreateDeploymentV1InternalServerError() *CreateDeploymentV1InternalServerError {
	return &CreateDeploymentV1InternalServerError{}
}

/*CreateDeploymentV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateDeploymentV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateDeploymentV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments][%d] createDeploymentV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateDeploymentV1InternalServerError) ToJSONString() string {
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

func (o *CreateDeploymentV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateDeploymentV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
