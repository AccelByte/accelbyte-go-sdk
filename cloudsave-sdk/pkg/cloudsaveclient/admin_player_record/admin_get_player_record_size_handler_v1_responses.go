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

// AdminGetPlayerRecordSizeHandlerV1Reader is a Reader for the AdminGetPlayerRecordSizeHandlerV1 structure.
type AdminGetPlayerRecordSizeHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerRecordSizeHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerRecordSizeHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerRecordSizeHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerRecordSizeHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerRecordSizeHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerRecordSizeHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerRecordSizeHandlerV1OK creates a AdminGetPlayerRecordSizeHandlerV1OK with default headers values
func NewAdminGetPlayerRecordSizeHandlerV1OK() *AdminGetPlayerRecordSizeHandlerV1OK {
	return &AdminGetPlayerRecordSizeHandlerV1OK{}
}

/*AdminGetPlayerRecordSizeHandlerV1OK handles this case with default header values.

  Record in user-level retrieved
*/
type AdminGetPlayerRecordSizeHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordSizeResponse
}

func (o *AdminGetPlayerRecordSizeHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size][%d] adminGetPlayerRecordSizeHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerRecordSizeHandlerV1OK) ToJSONString() string {
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

func (o *AdminGetPlayerRecordSizeHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordSizeResponse {
	return o.Payload
}

func (o *AdminGetPlayerRecordSizeHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordSizeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordSizeHandlerV1Unauthorized creates a AdminGetPlayerRecordSizeHandlerV1Unauthorized with default headers values
func NewAdminGetPlayerRecordSizeHandlerV1Unauthorized() *AdminGetPlayerRecordSizeHandlerV1Unauthorized {
	return &AdminGetPlayerRecordSizeHandlerV1Unauthorized{}
}

/*AdminGetPlayerRecordSizeHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetPlayerRecordSizeHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordSizeHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size][%d] adminGetPlayerRecordSizeHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerRecordSizeHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerRecordSizeHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordSizeHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerRecordSizeHandlerV1Forbidden creates a AdminGetPlayerRecordSizeHandlerV1Forbidden with default headers values
func NewAdminGetPlayerRecordSizeHandlerV1Forbidden() *AdminGetPlayerRecordSizeHandlerV1Forbidden {
	return &AdminGetPlayerRecordSizeHandlerV1Forbidden{}
}

/*AdminGetPlayerRecordSizeHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetPlayerRecordSizeHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordSizeHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size][%d] adminGetPlayerRecordSizeHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerRecordSizeHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminGetPlayerRecordSizeHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordSizeHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerRecordSizeHandlerV1NotFound creates a AdminGetPlayerRecordSizeHandlerV1NotFound with default headers values
func NewAdminGetPlayerRecordSizeHandlerV1NotFound() *AdminGetPlayerRecordSizeHandlerV1NotFound {
	return &AdminGetPlayerRecordSizeHandlerV1NotFound{}
}

/*AdminGetPlayerRecordSizeHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18022</td><td>record not found</td></tr></table>
*/
type AdminGetPlayerRecordSizeHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordSizeHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size][%d] adminGetPlayerRecordSizeHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerRecordSizeHandlerV1NotFound) ToJSONString() string {
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

func (o *AdminGetPlayerRecordSizeHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordSizeHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerRecordSizeHandlerV1InternalServerError creates a AdminGetPlayerRecordSizeHandlerV1InternalServerError with default headers values
func NewAdminGetPlayerRecordSizeHandlerV1InternalServerError() *AdminGetPlayerRecordSizeHandlerV1InternalServerError {
	return &AdminGetPlayerRecordSizeHandlerV1InternalServerError{}
}

/*AdminGetPlayerRecordSizeHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18020</td><td>unable to get record</td></tr></table>
*/
type AdminGetPlayerRecordSizeHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordSizeHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size][%d] adminGetPlayerRecordSizeHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerRecordSizeHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerRecordSizeHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordSizeHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
