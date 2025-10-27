// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources

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

// UpdateNoSQLClusterV2Reader is a Reader for the UpdateNoSQLClusterV2 structure.
type UpdateNoSQLClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateNoSQLClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateNoSQLClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateNoSQLClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateNoSQLClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateNoSQLClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateNoSQLClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateNoSQLClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewUpdateNoSQLClusterV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateNoSQLClusterV2OK creates a UpdateNoSQLClusterV2OK with default headers values
func NewUpdateNoSQLClusterV2OK() *UpdateNoSQLClusterV2OK {
	return &UpdateNoSQLClusterV2OK{}
}

/*UpdateNoSQLClusterV2OK handles this case with default header values.

  OK
*/
type UpdateNoSQLClusterV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLResourceResponse
}

func (o *UpdateNoSQLClusterV2OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2OK) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLResourceResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLResourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateNoSQLClusterV2BadRequest creates a UpdateNoSQLClusterV2BadRequest with default headers values
func NewUpdateNoSQLClusterV2BadRequest() *UpdateNoSQLClusterV2BadRequest {
	return &UpdateNoSQLClusterV2BadRequest{}
}

/*UpdateNoSQLClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateNoSQLClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateNoSQLClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2BadRequest) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateNoSQLClusterV2Unauthorized creates a UpdateNoSQLClusterV2Unauthorized with default headers values
func NewUpdateNoSQLClusterV2Unauthorized() *UpdateNoSQLClusterV2Unauthorized {
	return &UpdateNoSQLClusterV2Unauthorized{}
}

/*UpdateNoSQLClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateNoSQLClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateNoSQLClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2Unauthorized) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateNoSQLClusterV2Forbidden creates a UpdateNoSQLClusterV2Forbidden with default headers values
func NewUpdateNoSQLClusterV2Forbidden() *UpdateNoSQLClusterV2Forbidden {
	return &UpdateNoSQLClusterV2Forbidden{}
}

/*UpdateNoSQLClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateNoSQLClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateNoSQLClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2Forbidden) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateNoSQLClusterV2NotFound creates a UpdateNoSQLClusterV2NotFound with default headers values
func NewUpdateNoSQLClusterV2NotFound() *UpdateNoSQLClusterV2NotFound {
	return &UpdateNoSQLClusterV2NotFound{}
}

/*UpdateNoSQLClusterV2NotFound handles this case with default header values.

  Not Found
*/
type UpdateNoSQLClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateNoSQLClusterV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2NotFound) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateNoSQLClusterV2InternalServerError creates a UpdateNoSQLClusterV2InternalServerError with default headers values
func NewUpdateNoSQLClusterV2InternalServerError() *UpdateNoSQLClusterV2InternalServerError {
	return &UpdateNoSQLClusterV2InternalServerError{}
}

/*UpdateNoSQLClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateNoSQLClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateNoSQLClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2InternalServerError) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateNoSQLClusterV2ServiceUnavailable creates a UpdateNoSQLClusterV2ServiceUnavailable with default headers values
func NewUpdateNoSQLClusterV2ServiceUnavailable() *UpdateNoSQLClusterV2ServiceUnavailable {
	return &UpdateNoSQLClusterV2ServiceUnavailable{}
}

/*UpdateNoSQLClusterV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type UpdateNoSQLClusterV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateNoSQLClusterV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] updateNoSqlClusterV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *UpdateNoSQLClusterV2ServiceUnavailable) ToJSONString() string {
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

func (o *UpdateNoSQLClusterV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateNoSQLClusterV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
