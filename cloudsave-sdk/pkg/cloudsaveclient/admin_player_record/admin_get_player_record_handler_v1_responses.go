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

// AdminGetPlayerRecordHandlerV1Reader is a Reader for the AdminGetPlayerRecordHandlerV1 structure.
type AdminGetPlayerRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerRecordHandlerV1OK creates a AdminGetPlayerRecordHandlerV1OK with default headers values
func NewAdminGetPlayerRecordHandlerV1OK() *AdminGetPlayerRecordHandlerV1OK {
	return &AdminGetPlayerRecordHandlerV1OK{}
}

/*AdminGetPlayerRecordHandlerV1OK handles this case with default header values.

  Record in user-level retrieved
*/
type AdminGetPlayerRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordResponse
}

func (o *AdminGetPlayerRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminGetPlayerRecordHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerRecordHandlerV1OK) ToJSONString() string {
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

func (o *AdminGetPlayerRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordResponse {
	return o.Payload
}

func (o *AdminGetPlayerRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordHandlerV1Unauthorized creates a AdminGetPlayerRecordHandlerV1Unauthorized with default headers values
func NewAdminGetPlayerRecordHandlerV1Unauthorized() *AdminGetPlayerRecordHandlerV1Unauthorized {
	return &AdminGetPlayerRecordHandlerV1Unauthorized{}
}

/*AdminGetPlayerRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetPlayerRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminGetPlayerRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerRecordHandlerV1Forbidden creates a AdminGetPlayerRecordHandlerV1Forbidden with default headers values
func NewAdminGetPlayerRecordHandlerV1Forbidden() *AdminGetPlayerRecordHandlerV1Forbidden {
	return &AdminGetPlayerRecordHandlerV1Forbidden{}
}

/*AdminGetPlayerRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetPlayerRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminGetPlayerRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminGetPlayerRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerRecordHandlerV1NotFound creates a AdminGetPlayerRecordHandlerV1NotFound with default headers values
func NewAdminGetPlayerRecordHandlerV1NotFound() *AdminGetPlayerRecordHandlerV1NotFound {
	return &AdminGetPlayerRecordHandlerV1NotFound{}
}

/*AdminGetPlayerRecordHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18022</td><td>record not found</td></tr></table>
*/
type AdminGetPlayerRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminGetPlayerRecordHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerRecordHandlerV1NotFound) ToJSONString() string {
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

func (o *AdminGetPlayerRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerRecordHandlerV1InternalServerError creates a AdminGetPlayerRecordHandlerV1InternalServerError with default headers values
func NewAdminGetPlayerRecordHandlerV1InternalServerError() *AdminGetPlayerRecordHandlerV1InternalServerError {
	return &AdminGetPlayerRecordHandlerV1InternalServerError{}
}

/*AdminGetPlayerRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18020</td><td>unable to get record</td></tr><tr><td>18005</td><td>unable to decode record</td></tr></table>
*/
type AdminGetPlayerRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminGetPlayerRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
