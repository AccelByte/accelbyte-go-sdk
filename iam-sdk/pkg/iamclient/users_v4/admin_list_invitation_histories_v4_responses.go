// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminListInvitationHistoriesV4Reader is a Reader for the AdminListInvitationHistoriesV4 structure.
type AdminListInvitationHistoriesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListInvitationHistoriesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListInvitationHistoriesV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListInvitationHistoriesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListInvitationHistoriesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListInvitationHistoriesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListInvitationHistoriesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewAdminListInvitationHistoriesV4NotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/invitationHistories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListInvitationHistoriesV4OK creates a AdminListInvitationHistoriesV4OK with default headers values
func NewAdminListInvitationHistoriesV4OK() *AdminListInvitationHistoriesV4OK {
	return &AdminListInvitationHistoriesV4OK{}
}

/*AdminListInvitationHistoriesV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminListInvitationHistoriesV4OK struct {
	Payload *iamclientmodels.ModelListInvitationHistoriesV4Response
}

func (o *AdminListInvitationHistoriesV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/invitationHistories][%d] adminListInvitationHistoriesV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListInvitationHistoriesV4OK) ToJSONString() string {
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

func (o *AdminListInvitationHistoriesV4OK) GetPayload() *iamclientmodels.ModelListInvitationHistoriesV4Response {
	return o.Payload
}

func (o *AdminListInvitationHistoriesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelListInvitationHistoriesV4Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListInvitationHistoriesV4BadRequest creates a AdminListInvitationHistoriesV4BadRequest with default headers values
func NewAdminListInvitationHistoriesV4BadRequest() *AdminListInvitationHistoriesV4BadRequest {
	return &AdminListInvitationHistoriesV4BadRequest{}
}

/*AdminListInvitationHistoriesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListInvitationHistoriesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListInvitationHistoriesV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/invitationHistories][%d] adminListInvitationHistoriesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListInvitationHistoriesV4BadRequest) ToJSONString() string {
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

func (o *AdminListInvitationHistoriesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListInvitationHistoriesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListInvitationHistoriesV4Unauthorized creates a AdminListInvitationHistoriesV4Unauthorized with default headers values
func NewAdminListInvitationHistoriesV4Unauthorized() *AdminListInvitationHistoriesV4Unauthorized {
	return &AdminListInvitationHistoriesV4Unauthorized{}
}

/*AdminListInvitationHistoriesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListInvitationHistoriesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListInvitationHistoriesV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/invitationHistories][%d] adminListInvitationHistoriesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListInvitationHistoriesV4Unauthorized) ToJSONString() string {
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

func (o *AdminListInvitationHistoriesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListInvitationHistoriesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListInvitationHistoriesV4Forbidden creates a AdminListInvitationHistoriesV4Forbidden with default headers values
func NewAdminListInvitationHistoriesV4Forbidden() *AdminListInvitationHistoriesV4Forbidden {
	return &AdminListInvitationHistoriesV4Forbidden{}
}

/*AdminListInvitationHistoriesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListInvitationHistoriesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListInvitationHistoriesV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/invitationHistories][%d] adminListInvitationHistoriesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListInvitationHistoriesV4Forbidden) ToJSONString() string {
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

func (o *AdminListInvitationHistoriesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListInvitationHistoriesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListInvitationHistoriesV4InternalServerError creates a AdminListInvitationHistoriesV4InternalServerError with default headers values
func NewAdminListInvitationHistoriesV4InternalServerError() *AdminListInvitationHistoriesV4InternalServerError {
	return &AdminListInvitationHistoriesV4InternalServerError{}
}

/*AdminListInvitationHistoriesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminListInvitationHistoriesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListInvitationHistoriesV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/invitationHistories][%d] adminListInvitationHistoriesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListInvitationHistoriesV4InternalServerError) ToJSONString() string {
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

func (o *AdminListInvitationHistoriesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListInvitationHistoriesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListInvitationHistoriesV4NotImplemented creates a AdminListInvitationHistoriesV4NotImplemented with default headers values
func NewAdminListInvitationHistoriesV4NotImplemented() *AdminListInvitationHistoriesV4NotImplemented {
	return &AdminListInvitationHistoriesV4NotImplemented{}
}

/*AdminListInvitationHistoriesV4NotImplemented handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20024</td><td>not implemented</td></tr></table>
*/
type AdminListInvitationHistoriesV4NotImplemented struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListInvitationHistoriesV4NotImplemented) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/invitationHistories][%d] adminListInvitationHistoriesV4NotImplemented  %+v", 501, o.ToJSONString())
}

func (o *AdminListInvitationHistoriesV4NotImplemented) ToJSONString() string {
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

func (o *AdminListInvitationHistoriesV4NotImplemented) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListInvitationHistoriesV4NotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
