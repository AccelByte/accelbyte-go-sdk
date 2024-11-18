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

// GetListOfDeploymentV2Reader is a Reader for the GetListOfDeploymentV2 structure.
type GetListOfDeploymentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfDeploymentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfDeploymentV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfDeploymentV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfDeploymentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfDeploymentV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfDeploymentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/deployments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfDeploymentV2OK creates a GetListOfDeploymentV2OK with default headers values
func NewGetListOfDeploymentV2OK() *GetListOfDeploymentV2OK {
	return &GetListOfDeploymentV2OK{}
}

/*GetListOfDeploymentV2OK handles this case with default header values.


 */
type GetListOfDeploymentV2OK struct {
	Payload *csmclientmodels.ApimodelGetDeploymentListV2Response
}

func (o *GetListOfDeploymentV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfDeploymentV2OK) ToJSONString() string {
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

func (o *GetListOfDeploymentV2OK) GetPayload() *csmclientmodels.ApimodelGetDeploymentListV2Response {
	return o.Payload
}

func (o *GetListOfDeploymentV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetDeploymentListV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfDeploymentV2BadRequest creates a GetListOfDeploymentV2BadRequest with default headers values
func NewGetListOfDeploymentV2BadRequest() *GetListOfDeploymentV2BadRequest {
	return &GetListOfDeploymentV2BadRequest{}
}

/*GetListOfDeploymentV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfDeploymentV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfDeploymentV2BadRequest) ToJSONString() string {
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

func (o *GetListOfDeploymentV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfDeploymentV2Unauthorized creates a GetListOfDeploymentV2Unauthorized with default headers values
func NewGetListOfDeploymentV2Unauthorized() *GetListOfDeploymentV2Unauthorized {
	return &GetListOfDeploymentV2Unauthorized{}
}

/*GetListOfDeploymentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfDeploymentV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfDeploymentV2Unauthorized) ToJSONString() string {
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

func (o *GetListOfDeploymentV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfDeploymentV2Forbidden creates a GetListOfDeploymentV2Forbidden with default headers values
func NewGetListOfDeploymentV2Forbidden() *GetListOfDeploymentV2Forbidden {
	return &GetListOfDeploymentV2Forbidden{}
}

/*GetListOfDeploymentV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetListOfDeploymentV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfDeploymentV2Forbidden) ToJSONString() string {
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

func (o *GetListOfDeploymentV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfDeploymentV2InternalServerError creates a GetListOfDeploymentV2InternalServerError with default headers values
func NewGetListOfDeploymentV2InternalServerError() *GetListOfDeploymentV2InternalServerError {
	return &GetListOfDeploymentV2InternalServerError{}
}

/*GetListOfDeploymentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfDeploymentV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfDeploymentV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/deployments][%d] getListOfDeploymentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfDeploymentV2InternalServerError) ToJSONString() string {
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

func (o *GetListOfDeploymentV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfDeploymentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
