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

// DeleteDeploymentV1Reader is a Reader for the DeleteDeploymentV1 structure.
type DeleteDeploymentV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteDeploymentV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteDeploymentV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteDeploymentV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteDeploymentV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteDeploymentV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteDeploymentV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteDeploymentV1NoContent creates a DeleteDeploymentV1NoContent with default headers values
func NewDeleteDeploymentV1NoContent() *DeleteDeploymentV1NoContent {
	return &DeleteDeploymentV1NoContent{}
}

/*DeleteDeploymentV1NoContent handles this case with default header values.


 */
type DeleteDeploymentV1NoContent struct {
}

func (o *DeleteDeploymentV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV1NoContent ", 204)
}

func (o *DeleteDeploymentV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteDeploymentV1Unauthorized creates a DeleteDeploymentV1Unauthorized with default headers values
func NewDeleteDeploymentV1Unauthorized() *DeleteDeploymentV1Unauthorized {
	return &DeleteDeploymentV1Unauthorized{}
}

/*DeleteDeploymentV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteDeploymentV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteDeploymentV1Unauthorized) ToJSONString() string {
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

func (o *DeleteDeploymentV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentV1Forbidden creates a DeleteDeploymentV1Forbidden with default headers values
func NewDeleteDeploymentV1Forbidden() *DeleteDeploymentV1Forbidden {
	return &DeleteDeploymentV1Forbidden{}
}

/*DeleteDeploymentV1Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteDeploymentV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteDeploymentV1Forbidden) ToJSONString() string {
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

func (o *DeleteDeploymentV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentV1NotFound creates a DeleteDeploymentV1NotFound with default headers values
func NewDeleteDeploymentV1NotFound() *DeleteDeploymentV1NotFound {
	return &DeleteDeploymentV1NotFound{}
}

/*DeleteDeploymentV1NotFound handles this case with default header values.

  Not Found
*/
type DeleteDeploymentV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteDeploymentV1NotFound) ToJSONString() string {
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

func (o *DeleteDeploymentV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentV1InternalServerError creates a DeleteDeploymentV1InternalServerError with default headers values
func NewDeleteDeploymentV1InternalServerError() *DeleteDeploymentV1InternalServerError {
	return &DeleteDeploymentV1InternalServerError{}
}

/*DeleteDeploymentV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteDeploymentV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteDeploymentV1InternalServerError) ToJSONString() string {
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

func (o *DeleteDeploymentV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
