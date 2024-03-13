// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminBulkGetPlayerRecordsByUserIDsHandlerV1Reader is a Reader for the AdminBulkGetPlayerRecordsByUserIDsHandlerV1 structure.
type AdminBulkGetPlayerRecordsByUserIDsHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1OK creates a AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK with default headers values
func NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1OK() *AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK {
	return &AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK{}
}

/*AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK handles this case with default header values.

  OK
*/
type AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkGetPlayerRecordsByUserIDsHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK) ToJSONString() string {
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

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse {
	return o.Payload
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest creates a AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest with default headers values
func NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest() *AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest {
	return &AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest{}
}

/*AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18125</td><td>invalid request body</td></tr><tr><td>18126</td><td>request record keys list exceed max size [%d]</td></tr></table>
*/
type AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized creates a AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized with default headers values
func NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized() *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized {
	return &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized{}
}

/*AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden creates a AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden with default headers values
func NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden() *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden {
	return &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden{}
}

/*AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError creates a AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError with default headers values
func NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError() *AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError {
	return &AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError{}
}

/*AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18124</td><td>unable to get record</td></tr><tr><td>18006</td><td>unable to decode record</td></tr></table>
*/
type AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
