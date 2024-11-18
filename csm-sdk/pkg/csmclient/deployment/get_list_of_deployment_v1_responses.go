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

// GetListOfDeploymentV1Reader is a Reader for the GetListOfDeploymentV1 structure.
type GetListOfDeploymentV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfDeploymentV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfDeploymentV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfDeploymentV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfDeploymentV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfDeploymentV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfDeploymentV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/deployments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfDeploymentV1OK creates a GetListOfDeploymentV1OK with default headers values
func NewGetListOfDeploymentV1OK() *GetListOfDeploymentV1OK {
	return &GetListOfDeploymentV1OK{}
}

/*GetListOfDeploymentV1OK handles this case with default header values.


 */
type GetListOfDeploymentV1OK struct {
	Payload *csmclientmodels.GeneratedGetDeploymentListV1Response
}

func (o *GetListOfDeploymentV1OK) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfDeploymentV1OK) ToJSONString() string {
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

func (o *GetListOfDeploymentV1OK) GetPayload() *csmclientmodels.GeneratedGetDeploymentListV1Response {
	return o.Payload
}

func (o *GetListOfDeploymentV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetDeploymentListV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfDeploymentV1BadRequest creates a GetListOfDeploymentV1BadRequest with default headers values
func NewGetListOfDeploymentV1BadRequest() *GetListOfDeploymentV1BadRequest {
	return &GetListOfDeploymentV1BadRequest{}
}

/*GetListOfDeploymentV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfDeploymentV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfDeploymentV1BadRequest) ToJSONString() string {
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

func (o *GetListOfDeploymentV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfDeploymentV1Unauthorized creates a GetListOfDeploymentV1Unauthorized with default headers values
func NewGetListOfDeploymentV1Unauthorized() *GetListOfDeploymentV1Unauthorized {
	return &GetListOfDeploymentV1Unauthorized{}
}

/*GetListOfDeploymentV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfDeploymentV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfDeploymentV1Unauthorized) ToJSONString() string {
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

func (o *GetListOfDeploymentV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfDeploymentV1Forbidden creates a GetListOfDeploymentV1Forbidden with default headers values
func NewGetListOfDeploymentV1Forbidden() *GetListOfDeploymentV1Forbidden {
	return &GetListOfDeploymentV1Forbidden{}
}

/*GetListOfDeploymentV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetListOfDeploymentV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfDeploymentV1Forbidden) ToJSONString() string {
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

func (o *GetListOfDeploymentV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfDeploymentV1InternalServerError creates a GetListOfDeploymentV1InternalServerError with default headers values
func NewGetListOfDeploymentV1InternalServerError() *GetListOfDeploymentV1InternalServerError {
	return &GetListOfDeploymentV1InternalServerError{}
}

/*GetListOfDeploymentV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfDeploymentV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfDeploymentV1InternalServerError) ToJSONString() string {
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

func (o *GetListOfDeploymentV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
