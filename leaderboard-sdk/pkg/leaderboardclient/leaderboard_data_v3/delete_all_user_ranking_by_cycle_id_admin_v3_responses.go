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

// DeleteAllUserRankingByCycleIDAdminV3Reader is a Reader for the DeleteAllUserRankingByCycleIDAdminV3 structure.
type DeleteAllUserRankingByCycleIDAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAllUserRankingByCycleIDAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAllUserRankingByCycleIDAdminV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAllUserRankingByCycleIDAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteAllUserRankingByCycleIDAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAllUserRankingByCycleIDAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAllUserRankingByCycleIDAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAllUserRankingByCycleIDAdminV3NoContent creates a DeleteAllUserRankingByCycleIDAdminV3NoContent with default headers values
func NewDeleteAllUserRankingByCycleIDAdminV3NoContent() *DeleteAllUserRankingByCycleIDAdminV3NoContent {
	return &DeleteAllUserRankingByCycleIDAdminV3NoContent{}
}

/*DeleteAllUserRankingByCycleIDAdminV3NoContent handles this case with default header values.

  all user ranking in specific cycleId successfully deleted
*/
type DeleteAllUserRankingByCycleIDAdminV3NoContent struct {
}

func (o *DeleteAllUserRankingByCycleIDAdminV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset][%d] deleteAllUserRankingByCycleIdAdminV3NoContent ", 204)
}

func (o *DeleteAllUserRankingByCycleIDAdminV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAllUserRankingByCycleIDAdminV3Unauthorized creates a DeleteAllUserRankingByCycleIDAdminV3Unauthorized with default headers values
func NewDeleteAllUserRankingByCycleIDAdminV3Unauthorized() *DeleteAllUserRankingByCycleIDAdminV3Unauthorized {
	return &DeleteAllUserRankingByCycleIDAdminV3Unauthorized{}
}

/*DeleteAllUserRankingByCycleIDAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteAllUserRankingByCycleIDAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteAllUserRankingByCycleIDAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset][%d] deleteAllUserRankingByCycleIdAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAllUserRankingByCycleIDAdminV3Unauthorized) ToJSONString() string {
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

func (o *DeleteAllUserRankingByCycleIDAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAllUserRankingByCycleIDAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAllUserRankingByCycleIDAdminV3Forbidden creates a DeleteAllUserRankingByCycleIDAdminV3Forbidden with default headers values
func NewDeleteAllUserRankingByCycleIDAdminV3Forbidden() *DeleteAllUserRankingByCycleIDAdminV3Forbidden {
	return &DeleteAllUserRankingByCycleIDAdminV3Forbidden{}
}

/*DeleteAllUserRankingByCycleIDAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>71241</td><td>forbidden environment</td></tr></table>
*/
type DeleteAllUserRankingByCycleIDAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteAllUserRankingByCycleIDAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset][%d] deleteAllUserRankingByCycleIdAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteAllUserRankingByCycleIDAdminV3Forbidden) ToJSONString() string {
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

func (o *DeleteAllUserRankingByCycleIDAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAllUserRankingByCycleIDAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAllUserRankingByCycleIDAdminV3NotFound creates a DeleteAllUserRankingByCycleIDAdminV3NotFound with default headers values
func NewDeleteAllUserRankingByCycleIDAdminV3NotFound() *DeleteAllUserRankingByCycleIDAdminV3NotFound {
	return &DeleteAllUserRankingByCycleIDAdminV3NotFound{}
}

/*DeleteAllUserRankingByCycleIDAdminV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr></table>
*/
type DeleteAllUserRankingByCycleIDAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteAllUserRankingByCycleIDAdminV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset][%d] deleteAllUserRankingByCycleIdAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAllUserRankingByCycleIDAdminV3NotFound) ToJSONString() string {
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

func (o *DeleteAllUserRankingByCycleIDAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAllUserRankingByCycleIDAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAllUserRankingByCycleIDAdminV3InternalServerError creates a DeleteAllUserRankingByCycleIDAdminV3InternalServerError with default headers values
func NewDeleteAllUserRankingByCycleIDAdminV3InternalServerError() *DeleteAllUserRankingByCycleIDAdminV3InternalServerError {
	return &DeleteAllUserRankingByCycleIDAdminV3InternalServerError{}
}

/*DeleteAllUserRankingByCycleIDAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteAllUserRankingByCycleIDAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteAllUserRankingByCycleIDAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset][%d] deleteAllUserRankingByCycleIdAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAllUserRankingByCycleIDAdminV3InternalServerError) ToJSONString() string {
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

func (o *DeleteAllUserRankingByCycleIDAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAllUserRankingByCycleIDAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
