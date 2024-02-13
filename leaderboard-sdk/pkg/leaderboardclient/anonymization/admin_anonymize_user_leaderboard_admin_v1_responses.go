// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// AdminAnonymizeUserLeaderboardAdminV1Reader is a Reader for the AdminAnonymizeUserLeaderboardAdminV1 structure.
type AdminAnonymizeUserLeaderboardAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAnonymizeUserLeaderboardAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAnonymizeUserLeaderboardAdminV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAnonymizeUserLeaderboardAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAnonymizeUserLeaderboardAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAnonymizeUserLeaderboardAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAnonymizeUserLeaderboardAdminV1NoContent creates a AdminAnonymizeUserLeaderboardAdminV1NoContent with default headers values
func NewAdminAnonymizeUserLeaderboardAdminV1NoContent() *AdminAnonymizeUserLeaderboardAdminV1NoContent {
	return &AdminAnonymizeUserLeaderboardAdminV1NoContent{}
}

/*AdminAnonymizeUserLeaderboardAdminV1NoContent handles this case with default header values.

  successful operation
*/
type AdminAnonymizeUserLeaderboardAdminV1NoContent struct {
}

func (o *AdminAnonymizeUserLeaderboardAdminV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards][%d] adminAnonymizeUserLeaderboardAdminV1NoContent ", 204)
}

func (o *AdminAnonymizeUserLeaderboardAdminV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAnonymizeUserLeaderboardAdminV1Unauthorized creates a AdminAnonymizeUserLeaderboardAdminV1Unauthorized with default headers values
func NewAdminAnonymizeUserLeaderboardAdminV1Unauthorized() *AdminAnonymizeUserLeaderboardAdminV1Unauthorized {
	return &AdminAnonymizeUserLeaderboardAdminV1Unauthorized{}
}

/*AdminAnonymizeUserLeaderboardAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAnonymizeUserLeaderboardAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminAnonymizeUserLeaderboardAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards][%d] adminAnonymizeUserLeaderboardAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAnonymizeUserLeaderboardAdminV1Unauthorized) ToJSONString() string {
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

func (o *AdminAnonymizeUserLeaderboardAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAnonymizeUserLeaderboardAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAnonymizeUserLeaderboardAdminV1Forbidden creates a AdminAnonymizeUserLeaderboardAdminV1Forbidden with default headers values
func NewAdminAnonymizeUserLeaderboardAdminV1Forbidden() *AdminAnonymizeUserLeaderboardAdminV1Forbidden {
	return &AdminAnonymizeUserLeaderboardAdminV1Forbidden{}
}

/*AdminAnonymizeUserLeaderboardAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminAnonymizeUserLeaderboardAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminAnonymizeUserLeaderboardAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards][%d] adminAnonymizeUserLeaderboardAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAnonymizeUserLeaderboardAdminV1Forbidden) ToJSONString() string {
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

func (o *AdminAnonymizeUserLeaderboardAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAnonymizeUserLeaderboardAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAnonymizeUserLeaderboardAdminV1InternalServerError creates a AdminAnonymizeUserLeaderboardAdminV1InternalServerError with default headers values
func NewAdminAnonymizeUserLeaderboardAdminV1InternalServerError() *AdminAnonymizeUserLeaderboardAdminV1InternalServerError {
	return &AdminAnonymizeUserLeaderboardAdminV1InternalServerError{}
}

/*AdminAnonymizeUserLeaderboardAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminAnonymizeUserLeaderboardAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminAnonymizeUserLeaderboardAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards][%d] adminAnonymizeUserLeaderboardAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAnonymizeUserLeaderboardAdminV1InternalServerError) ToJSONString() string {
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

func (o *AdminAnonymizeUserLeaderboardAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAnonymizeUserLeaderboardAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
