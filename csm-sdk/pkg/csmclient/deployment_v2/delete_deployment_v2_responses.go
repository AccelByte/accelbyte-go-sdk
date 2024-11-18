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

// DeleteDeploymentV2Reader is a Reader for the DeleteDeploymentV2 structure.
type DeleteDeploymentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteDeploymentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteDeploymentV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteDeploymentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteDeploymentV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteDeploymentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteDeploymentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteDeploymentV2NoContent creates a DeleteDeploymentV2NoContent with default headers values
func NewDeleteDeploymentV2NoContent() *DeleteDeploymentV2NoContent {
	return &DeleteDeploymentV2NoContent{}
}

/*DeleteDeploymentV2NoContent handles this case with default header values.


 */
type DeleteDeploymentV2NoContent struct {
}

func (o *DeleteDeploymentV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV2NoContent ", 204)
}

func (o *DeleteDeploymentV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteDeploymentV2Unauthorized creates a DeleteDeploymentV2Unauthorized with default headers values
func NewDeleteDeploymentV2Unauthorized() *DeleteDeploymentV2Unauthorized {
	return &DeleteDeploymentV2Unauthorized{}
}

/*DeleteDeploymentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteDeploymentV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteDeploymentV2Unauthorized) ToJSONString() string {
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

func (o *DeleteDeploymentV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentV2Forbidden creates a DeleteDeploymentV2Forbidden with default headers values
func NewDeleteDeploymentV2Forbidden() *DeleteDeploymentV2Forbidden {
	return &DeleteDeploymentV2Forbidden{}
}

/*DeleteDeploymentV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteDeploymentV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteDeploymentV2Forbidden) ToJSONString() string {
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

func (o *DeleteDeploymentV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentV2NotFound creates a DeleteDeploymentV2NotFound with default headers values
func NewDeleteDeploymentV2NotFound() *DeleteDeploymentV2NotFound {
	return &DeleteDeploymentV2NotFound{}
}

/*DeleteDeploymentV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteDeploymentV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteDeploymentV2NotFound) ToJSONString() string {
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

func (o *DeleteDeploymentV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentV2InternalServerError creates a DeleteDeploymentV2InternalServerError with default headers values
func NewDeleteDeploymentV2InternalServerError() *DeleteDeploymentV2InternalServerError {
	return &DeleteDeploymentV2InternalServerError{}
}

/*DeleteDeploymentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteDeploymentV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteDeploymentV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}][%d] deleteDeploymentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteDeploymentV2InternalServerError) ToJSONString() string {
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

func (o *DeleteDeploymentV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteDeploymentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
