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

// StartNoSQLClusterV2Reader is a Reader for the StartNoSQLClusterV2 structure.
type StartNoSQLClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StartNoSQLClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewStartNoSQLClusterV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStartNoSQLClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStartNoSQLClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStartNoSQLClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStartNoSQLClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStartNoSQLClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewStartNoSQLClusterV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStartNoSQLClusterV2NoContent creates a StartNoSQLClusterV2NoContent with default headers values
func NewStartNoSQLClusterV2NoContent() *StartNoSQLClusterV2NoContent {
	return &StartNoSQLClusterV2NoContent{}
}

/*StartNoSQLClusterV2NoContent handles this case with default header values.

  No Content
*/
type StartNoSQLClusterV2NoContent struct {
}

func (o *StartNoSQLClusterV2NoContent) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2NoContent ", 204)
}

func (o *StartNoSQLClusterV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewStartNoSQLClusterV2BadRequest creates a StartNoSQLClusterV2BadRequest with default headers values
func NewStartNoSQLClusterV2BadRequest() *StartNoSQLClusterV2BadRequest {
	return &StartNoSQLClusterV2BadRequest{}
}

/*StartNoSQLClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type StartNoSQLClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartNoSQLClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *StartNoSQLClusterV2BadRequest) ToJSONString() string {
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

func (o *StartNoSQLClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartNoSQLClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartNoSQLClusterV2Unauthorized creates a StartNoSQLClusterV2Unauthorized with default headers values
func NewStartNoSQLClusterV2Unauthorized() *StartNoSQLClusterV2Unauthorized {
	return &StartNoSQLClusterV2Unauthorized{}
}

/*StartNoSQLClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type StartNoSQLClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartNoSQLClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *StartNoSQLClusterV2Unauthorized) ToJSONString() string {
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

func (o *StartNoSQLClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartNoSQLClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartNoSQLClusterV2Forbidden creates a StartNoSQLClusterV2Forbidden with default headers values
func NewStartNoSQLClusterV2Forbidden() *StartNoSQLClusterV2Forbidden {
	return &StartNoSQLClusterV2Forbidden{}
}

/*StartNoSQLClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type StartNoSQLClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartNoSQLClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *StartNoSQLClusterV2Forbidden) ToJSONString() string {
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

func (o *StartNoSQLClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartNoSQLClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartNoSQLClusterV2NotFound creates a StartNoSQLClusterV2NotFound with default headers values
func NewStartNoSQLClusterV2NotFound() *StartNoSQLClusterV2NotFound {
	return &StartNoSQLClusterV2NotFound{}
}

/*StartNoSQLClusterV2NotFound handles this case with default header values.

  Not Found
*/
type StartNoSQLClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartNoSQLClusterV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *StartNoSQLClusterV2NotFound) ToJSONString() string {
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

func (o *StartNoSQLClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartNoSQLClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartNoSQLClusterV2InternalServerError creates a StartNoSQLClusterV2InternalServerError with default headers values
func NewStartNoSQLClusterV2InternalServerError() *StartNoSQLClusterV2InternalServerError {
	return &StartNoSQLClusterV2InternalServerError{}
}

/*StartNoSQLClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type StartNoSQLClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartNoSQLClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StartNoSQLClusterV2InternalServerError) ToJSONString() string {
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

func (o *StartNoSQLClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartNoSQLClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartNoSQLClusterV2ServiceUnavailable creates a StartNoSQLClusterV2ServiceUnavailable with default headers values
func NewStartNoSQLClusterV2ServiceUnavailable() *StartNoSQLClusterV2ServiceUnavailable {
	return &StartNoSQLClusterV2ServiceUnavailable{}
}

/*StartNoSQLClusterV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type StartNoSQLClusterV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartNoSQLClusterV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start][%d] startNoSqlClusterV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *StartNoSQLClusterV2ServiceUnavailable) ToJSONString() string {
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

func (o *StartNoSQLClusterV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartNoSQLClusterV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
