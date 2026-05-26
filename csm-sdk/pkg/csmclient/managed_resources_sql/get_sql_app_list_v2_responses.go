// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_sql

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

// GetSQLAppListV2Reader is a Reader for the GetSQLAppListV2 structure.
type GetSQLAppListV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSQLAppListV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSQLAppListV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSQLAppListV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSQLAppListV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSQLAppListV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSQLAppListV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSQLAppListV2OK creates a GetSQLAppListV2OK with default headers values
func NewGetSQLAppListV2OK() *GetSQLAppListV2OK {
	return &GetSQLAppListV2OK{}
}

/*GetSQLAppListV2OK handles this case with default header values.

  OK
*/
type GetSQLAppListV2OK struct {
	Payload *csmclientmodels.ApimodelSQLAppListResponse
}

func (o *GetSQLAppListV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps][%d] getSqlAppListV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetSQLAppListV2OK) ToJSONString() string {
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

func (o *GetSQLAppListV2OK) GetPayload() *csmclientmodels.ApimodelSQLAppListResponse {
	return o.Payload
}

func (o *GetSQLAppListV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelSQLAppListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSQLAppListV2BadRequest creates a GetSQLAppListV2BadRequest with default headers values
func NewGetSQLAppListV2BadRequest() *GetSQLAppListV2BadRequest {
	return &GetSQLAppListV2BadRequest{}
}

/*GetSQLAppListV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetSQLAppListV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLAppListV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps][%d] getSqlAppListV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSQLAppListV2BadRequest) ToJSONString() string {
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

func (o *GetSQLAppListV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLAppListV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSQLAppListV2Unauthorized creates a GetSQLAppListV2Unauthorized with default headers values
func NewGetSQLAppListV2Unauthorized() *GetSQLAppListV2Unauthorized {
	return &GetSQLAppListV2Unauthorized{}
}

/*GetSQLAppListV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetSQLAppListV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLAppListV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps][%d] getSqlAppListV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSQLAppListV2Unauthorized) ToJSONString() string {
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

func (o *GetSQLAppListV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLAppListV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSQLAppListV2Forbidden creates a GetSQLAppListV2Forbidden with default headers values
func NewGetSQLAppListV2Forbidden() *GetSQLAppListV2Forbidden {
	return &GetSQLAppListV2Forbidden{}
}

/*GetSQLAppListV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetSQLAppListV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLAppListV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps][%d] getSqlAppListV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSQLAppListV2Forbidden) ToJSONString() string {
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

func (o *GetSQLAppListV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLAppListV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSQLAppListV2InternalServerError creates a GetSQLAppListV2InternalServerError with default headers values
func NewGetSQLAppListV2InternalServerError() *GetSQLAppListV2InternalServerError {
	return &GetSQLAppListV2InternalServerError{}
}

/*GetSQLAppListV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSQLAppListV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLAppListV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps][%d] getSqlAppListV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSQLAppListV2InternalServerError) ToJSONString() string {
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

func (o *GetSQLAppListV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLAppListV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
