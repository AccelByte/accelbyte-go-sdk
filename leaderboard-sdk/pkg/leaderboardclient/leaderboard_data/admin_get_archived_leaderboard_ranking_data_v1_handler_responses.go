// Code generated by go-swagger; DO NOT EDIT.

package leaderboard_data

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// AdminGetArchivedLeaderboardRankingDataV1HandlerReader is a Reader for the AdminGetArchivedLeaderboardRankingDataV1Handler structure.
type AdminGetArchivedLeaderboardRankingDataV1HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetArchivedLeaderboardRankingDataV1HandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetArchivedLeaderboardRankingDataV1HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetArchivedLeaderboardRankingDataV1HandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerOK creates a AdminGetArchivedLeaderboardRankingDataV1HandlerOK with default headers values
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerOK() *AdminGetArchivedLeaderboardRankingDataV1HandlerOK {
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerOK{}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerOK handles this case with default header values.

  OK
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerOK struct {
	Payload []*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerOK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] adminGetArchivedLeaderboardRankingDataV1HandlerOK  %+v", 200, o.Payload)
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerOK) GetPayload() []*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse {
	return o.Payload
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest creates a AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest with default headers values
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest() *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest {
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest{}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] adminGetArchivedLeaderboardRankingDataV1HandlerBadRequest  %+v", 400, o.Payload)
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized creates a AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized with default headers values
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized() *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized {
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized{}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] adminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerForbidden creates a AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden with default headers values
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerForbidden() *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden {
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden{}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] adminGetArchivedLeaderboardRankingDataV1HandlerForbidden  %+v", 403, o.Payload)
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerNotFound creates a AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound with default headers values
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerNotFound() *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound {
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound{}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound handles this case with default header values.

  Not Found
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] adminGetArchivedLeaderboardRankingDataV1HandlerNotFound  %+v", 404, o.Payload)
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError creates a AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError with default headers values
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError() *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError {
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError{}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] adminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
