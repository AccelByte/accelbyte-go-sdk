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

// GetNoSQLAppListV2Reader is a Reader for the GetNoSQLAppListV2 structure.
type GetNoSQLAppListV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNoSQLAppListV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNoSQLAppListV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetNoSQLAppListV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNoSQLAppListV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetNoSQLAppListV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNoSQLAppListV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNoSQLAppListV2OK creates a GetNoSQLAppListV2OK with default headers values
func NewGetNoSQLAppListV2OK() *GetNoSQLAppListV2OK {
	return &GetNoSQLAppListV2OK{}
}

/*GetNoSQLAppListV2OK handles this case with default header values.

  OK
*/
type GetNoSQLAppListV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLAppListResponse
}

func (o *GetNoSQLAppListV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps][%d] getNoSqlAppListV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetNoSQLAppListV2OK) ToJSONString() string {
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

func (o *GetNoSQLAppListV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLAppListResponse {
	return o.Payload
}

func (o *GetNoSQLAppListV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLAppListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLAppListV2BadRequest creates a GetNoSQLAppListV2BadRequest with default headers values
func NewGetNoSQLAppListV2BadRequest() *GetNoSQLAppListV2BadRequest {
	return &GetNoSQLAppListV2BadRequest{}
}

/*GetNoSQLAppListV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetNoSQLAppListV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAppListV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps][%d] getNoSqlAppListV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetNoSQLAppListV2BadRequest) ToJSONString() string {
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

func (o *GetNoSQLAppListV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAppListV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLAppListV2Unauthorized creates a GetNoSQLAppListV2Unauthorized with default headers values
func NewGetNoSQLAppListV2Unauthorized() *GetNoSQLAppListV2Unauthorized {
	return &GetNoSQLAppListV2Unauthorized{}
}

/*GetNoSQLAppListV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetNoSQLAppListV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAppListV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps][%d] getNoSqlAppListV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNoSQLAppListV2Unauthorized) ToJSONString() string {
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

func (o *GetNoSQLAppListV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAppListV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLAppListV2Forbidden creates a GetNoSQLAppListV2Forbidden with default headers values
func NewGetNoSQLAppListV2Forbidden() *GetNoSQLAppListV2Forbidden {
	return &GetNoSQLAppListV2Forbidden{}
}

/*GetNoSQLAppListV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetNoSQLAppListV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAppListV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps][%d] getNoSqlAppListV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetNoSQLAppListV2Forbidden) ToJSONString() string {
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

func (o *GetNoSQLAppListV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAppListV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLAppListV2InternalServerError creates a GetNoSQLAppListV2InternalServerError with default headers values
func NewGetNoSQLAppListV2InternalServerError() *GetNoSQLAppListV2InternalServerError {
	return &GetNoSQLAppListV2InternalServerError{}
}

/*GetNoSQLAppListV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNoSQLAppListV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAppListV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps][%d] getNoSqlAppListV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNoSQLAppListV2InternalServerError) ToJSONString() string {
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

func (o *GetNoSQLAppListV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAppListV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
