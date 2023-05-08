// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data_v3

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

// DeleteUserRankingsAdminV3Reader is a Reader for the DeleteUserRankingsAdminV3 structure.
type DeleteUserRankingsAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserRankingsAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserRankingsAdminV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserRankingsAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserRankingsAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserRankingsAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserRankingsAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v3/admin/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserRankingsAdminV3NoContent creates a DeleteUserRankingsAdminV3NoContent with default headers values
func NewDeleteUserRankingsAdminV3NoContent() *DeleteUserRankingsAdminV3NoContent {
	return &DeleteUserRankingsAdminV3NoContent{}
}

/*DeleteUserRankingsAdminV3NoContent handles this case with default header values.

  No Content
*/
type DeleteUserRankingsAdminV3NoContent struct {
}

func (o *DeleteUserRankingsAdminV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}][%d] deleteUserRankingsAdminV3NoContent ", 204)
}

func (o *DeleteUserRankingsAdminV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRankingsAdminV3Unauthorized creates a DeleteUserRankingsAdminV3Unauthorized with default headers values
func NewDeleteUserRankingsAdminV3Unauthorized() *DeleteUserRankingsAdminV3Unauthorized {
	return &DeleteUserRankingsAdminV3Unauthorized{}
}

/*DeleteUserRankingsAdminV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteUserRankingsAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingsAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}][%d] deleteUserRankingsAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserRankingsAdminV3Unauthorized) ToJSONString() string {
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

func (o *DeleteUserRankingsAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingsAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingsAdminV3Forbidden creates a DeleteUserRankingsAdminV3Forbidden with default headers values
func NewDeleteUserRankingsAdminV3Forbidden() *DeleteUserRankingsAdminV3Forbidden {
	return &DeleteUserRankingsAdminV3Forbidden{}
}

/*DeleteUserRankingsAdminV3Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteUserRankingsAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingsAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}][%d] deleteUserRankingsAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserRankingsAdminV3Forbidden) ToJSONString() string {
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

func (o *DeleteUserRankingsAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingsAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingsAdminV3NotFound creates a DeleteUserRankingsAdminV3NotFound with default headers values
func NewDeleteUserRankingsAdminV3NotFound() *DeleteUserRankingsAdminV3NotFound {
	return &DeleteUserRankingsAdminV3NotFound{}
}

/*DeleteUserRankingsAdminV3NotFound handles this case with default header values.

  Not Found
*/
type DeleteUserRankingsAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingsAdminV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}][%d] deleteUserRankingsAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserRankingsAdminV3NotFound) ToJSONString() string {
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

func (o *DeleteUserRankingsAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingsAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingsAdminV3InternalServerError creates a DeleteUserRankingsAdminV3InternalServerError with default headers values
func NewDeleteUserRankingsAdminV3InternalServerError() *DeleteUserRankingsAdminV3InternalServerError {
	return &DeleteUserRankingsAdminV3InternalServerError{}
}

/*DeleteUserRankingsAdminV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteUserRankingsAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingsAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}][%d] deleteUserRankingsAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserRankingsAdminV3InternalServerError) ToJSONString() string {
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

func (o *DeleteUserRankingsAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingsAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
