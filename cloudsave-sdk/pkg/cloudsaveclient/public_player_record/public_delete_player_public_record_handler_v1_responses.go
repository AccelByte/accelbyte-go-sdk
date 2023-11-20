// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_record

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

// PublicDeletePlayerPublicRecordHandlerV1Reader is a Reader for the PublicDeletePlayerPublicRecordHandlerV1 structure.
type PublicDeletePlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeletePlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeletePlayerPublicRecordHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDeletePlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeletePlayerPublicRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDeletePlayerPublicRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeletePlayerPublicRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeletePlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeletePlayerPublicRecordHandlerV1NoContent creates a PublicDeletePlayerPublicRecordHandlerV1NoContent with default headers values
func NewPublicDeletePlayerPublicRecordHandlerV1NoContent() *PublicDeletePlayerPublicRecordHandlerV1NoContent {
	return &PublicDeletePlayerPublicRecordHandlerV1NoContent{}
}

/*PublicDeletePlayerPublicRecordHandlerV1NoContent handles this case with default header values.

  Record deleted
*/
type PublicDeletePlayerPublicRecordHandlerV1NoContent struct {
}

func (o *PublicDeletePlayerPublicRecordHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public][%d] publicDeletePlayerPublicRecordHandlerV1NoContent ", 204)
}

func (o *PublicDeletePlayerPublicRecordHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeletePlayerPublicRecordHandlerV1BadRequest creates a PublicDeletePlayerPublicRecordHandlerV1BadRequest with default headers values
func NewPublicDeletePlayerPublicRecordHandlerV1BadRequest() *PublicDeletePlayerPublicRecordHandlerV1BadRequest {
	return &PublicDeletePlayerPublicRecordHandlerV1BadRequest{}
}

/*PublicDeletePlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PublicDeletePlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PublicDeletePlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public][%d] publicDeletePlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicDeletePlayerPublicRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *PublicDeletePlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeletePlayerPublicRecordHandlerV1Unauthorized creates a PublicDeletePlayerPublicRecordHandlerV1Unauthorized with default headers values
func NewPublicDeletePlayerPublicRecordHandlerV1Unauthorized() *PublicDeletePlayerPublicRecordHandlerV1Unauthorized {
	return &PublicDeletePlayerPublicRecordHandlerV1Unauthorized{}
}

/*PublicDeletePlayerPublicRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDeletePlayerPublicRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PublicDeletePlayerPublicRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public][%d] publicDeletePlayerPublicRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeletePlayerPublicRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *PublicDeletePlayerPublicRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerPublicRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeletePlayerPublicRecordHandlerV1Forbidden creates a PublicDeletePlayerPublicRecordHandlerV1Forbidden with default headers values
func NewPublicDeletePlayerPublicRecordHandlerV1Forbidden() *PublicDeletePlayerPublicRecordHandlerV1Forbidden {
	return &PublicDeletePlayerPublicRecordHandlerV1Forbidden{}
}

/*PublicDeletePlayerPublicRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicDeletePlayerPublicRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PublicDeletePlayerPublicRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public][%d] publicDeletePlayerPublicRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDeletePlayerPublicRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *PublicDeletePlayerPublicRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerPublicRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeletePlayerPublicRecordHandlerV1NotFound creates a PublicDeletePlayerPublicRecordHandlerV1NotFound with default headers values
func NewPublicDeletePlayerPublicRecordHandlerV1NotFound() *PublicDeletePlayerPublicRecordHandlerV1NotFound {
	return &PublicDeletePlayerPublicRecordHandlerV1NotFound{}
}

/*PublicDeletePlayerPublicRecordHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18122</td><td>record not found</td></tr></table>
*/
type PublicDeletePlayerPublicRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PublicDeletePlayerPublicRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public][%d] publicDeletePlayerPublicRecordHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDeletePlayerPublicRecordHandlerV1NotFound) ToJSONString() string {
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

func (o *PublicDeletePlayerPublicRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerPublicRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeletePlayerPublicRecordHandlerV1InternalServerError creates a PublicDeletePlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewPublicDeletePlayerPublicRecordHandlerV1InternalServerError() *PublicDeletePlayerPublicRecordHandlerV1InternalServerError {
	return &PublicDeletePlayerPublicRecordHandlerV1InternalServerError{}
}

/*PublicDeletePlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18120</td><td>unable to delete record</td></tr></table>
*/
type PublicDeletePlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PublicDeletePlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public][%d] publicDeletePlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDeletePlayerPublicRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *PublicDeletePlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
