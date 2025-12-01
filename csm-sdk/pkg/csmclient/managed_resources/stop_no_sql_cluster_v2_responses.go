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

// StopNoSQLClusterV2Reader is a Reader for the StopNoSQLClusterV2 structure.
type StopNoSQLClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StopNoSQLClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewStopNoSQLClusterV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStopNoSQLClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStopNoSQLClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStopNoSQLClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStopNoSQLClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStopNoSQLClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewStopNoSQLClusterV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStopNoSQLClusterV2NoContent creates a StopNoSQLClusterV2NoContent with default headers values
func NewStopNoSQLClusterV2NoContent() *StopNoSQLClusterV2NoContent {
	return &StopNoSQLClusterV2NoContent{}
}

/*StopNoSQLClusterV2NoContent handles this case with default header values.

  No Content
*/
type StopNoSQLClusterV2NoContent struct {
}

func (o *StopNoSQLClusterV2NoContent) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2NoContent ", 204)
}

func (o *StopNoSQLClusterV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewStopNoSQLClusterV2BadRequest creates a StopNoSQLClusterV2BadRequest with default headers values
func NewStopNoSQLClusterV2BadRequest() *StopNoSQLClusterV2BadRequest {
	return &StopNoSQLClusterV2BadRequest{}
}

/*StopNoSQLClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type StopNoSQLClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopNoSQLClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *StopNoSQLClusterV2BadRequest) ToJSONString() string {
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

func (o *StopNoSQLClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopNoSQLClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopNoSQLClusterV2Unauthorized creates a StopNoSQLClusterV2Unauthorized with default headers values
func NewStopNoSQLClusterV2Unauthorized() *StopNoSQLClusterV2Unauthorized {
	return &StopNoSQLClusterV2Unauthorized{}
}

/*StopNoSQLClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type StopNoSQLClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopNoSQLClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *StopNoSQLClusterV2Unauthorized) ToJSONString() string {
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

func (o *StopNoSQLClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopNoSQLClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopNoSQLClusterV2Forbidden creates a StopNoSQLClusterV2Forbidden with default headers values
func NewStopNoSQLClusterV2Forbidden() *StopNoSQLClusterV2Forbidden {
	return &StopNoSQLClusterV2Forbidden{}
}

/*StopNoSQLClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type StopNoSQLClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopNoSQLClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *StopNoSQLClusterV2Forbidden) ToJSONString() string {
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

func (o *StopNoSQLClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopNoSQLClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopNoSQLClusterV2NotFound creates a StopNoSQLClusterV2NotFound with default headers values
func NewStopNoSQLClusterV2NotFound() *StopNoSQLClusterV2NotFound {
	return &StopNoSQLClusterV2NotFound{}
}

/*StopNoSQLClusterV2NotFound handles this case with default header values.

  Not Found
*/
type StopNoSQLClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopNoSQLClusterV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *StopNoSQLClusterV2NotFound) ToJSONString() string {
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

func (o *StopNoSQLClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopNoSQLClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopNoSQLClusterV2InternalServerError creates a StopNoSQLClusterV2InternalServerError with default headers values
func NewStopNoSQLClusterV2InternalServerError() *StopNoSQLClusterV2InternalServerError {
	return &StopNoSQLClusterV2InternalServerError{}
}

/*StopNoSQLClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type StopNoSQLClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopNoSQLClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StopNoSQLClusterV2InternalServerError) ToJSONString() string {
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

func (o *StopNoSQLClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopNoSQLClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopNoSQLClusterV2ServiceUnavailable creates a StopNoSQLClusterV2ServiceUnavailable with default headers values
func NewStopNoSQLClusterV2ServiceUnavailable() *StopNoSQLClusterV2ServiceUnavailable {
	return &StopNoSQLClusterV2ServiceUnavailable{}
}

/*StopNoSQLClusterV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type StopNoSQLClusterV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopNoSQLClusterV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop][%d] stopNoSqlClusterV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *StopNoSQLClusterV2ServiceUnavailable) ToJSONString() string {
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

func (o *StopNoSQLClusterV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopNoSQLClusterV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
