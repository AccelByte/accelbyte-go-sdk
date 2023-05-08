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

// DeleteUserRankingByLeaderboardCodeAdminV3Reader is a Reader for the DeleteUserRankingByLeaderboardCodeAdminV3 structure.
type DeleteUserRankingByLeaderboardCodeAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserRankingByLeaderboardCodeAdminV3NoContent creates a DeleteUserRankingByLeaderboardCodeAdminV3NoContent with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV3NoContent() *DeleteUserRankingByLeaderboardCodeAdminV3NoContent {
	return &DeleteUserRankingByLeaderboardCodeAdminV3NoContent{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV3NoContent handles this case with default header values.

  No Content
*/
type DeleteUserRankingByLeaderboardCodeAdminV3NoContent struct {
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV3NoContent ", 204)
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRankingByLeaderboardCodeAdminV3Unauthorized creates a DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV3Unauthorized() *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized {
	return &DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingByLeaderboardCodeAdminV3Forbidden creates a DeleteUserRankingByLeaderboardCodeAdminV3Forbidden with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV3Forbidden() *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden {
	return &DeleteUserRankingByLeaderboardCodeAdminV3Forbidden{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV3Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteUserRankingByLeaderboardCodeAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingByLeaderboardCodeAdminV3NotFound creates a DeleteUserRankingByLeaderboardCodeAdminV3NotFound with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV3NotFound() *DeleteUserRankingByLeaderboardCodeAdminV3NotFound {
	return &DeleteUserRankingByLeaderboardCodeAdminV3NotFound{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV3NotFound handles this case with default header values.

  Not Found
*/
type DeleteUserRankingByLeaderboardCodeAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3NotFound) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingByLeaderboardCodeAdminV3InternalServerError creates a DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV3InternalServerError() *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError {
	return &DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
