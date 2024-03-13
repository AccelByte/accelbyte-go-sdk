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

// AdminGetNamespaceUserInvitationHistoryV4Reader is a Reader for the AdminGetNamespaceUserInvitationHistoryV4 structure.
type AdminGetNamespaceUserInvitationHistoryV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetNamespaceUserInvitationHistoryV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetNamespaceUserInvitationHistoryV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetNamespaceUserInvitationHistoryV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetNamespaceUserInvitationHistoryV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetNamespaceUserInvitationHistoryV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetNamespaceUserInvitationHistoryV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewAdminGetNamespaceUserInvitationHistoryV4NotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetNamespaceUserInvitationHistoryV4OK creates a AdminGetNamespaceUserInvitationHistoryV4OK with default headers values
func NewAdminGetNamespaceUserInvitationHistoryV4OK() *AdminGetNamespaceUserInvitationHistoryV4OK {
	return &AdminGetNamespaceUserInvitationHistoryV4OK{}
}

/*AdminGetNamespaceUserInvitationHistoryV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetNamespaceUserInvitationHistoryV4OK struct {
	Payload *iamclientmodels.ModelNamespaceInvitationHistoryUserV4Response
}

func (o *AdminGetNamespaceUserInvitationHistoryV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users][%d] adminGetNamespaceUserInvitationHistoryV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetNamespaceUserInvitationHistoryV4OK) ToJSONString() string {
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

func (o *AdminGetNamespaceUserInvitationHistoryV4OK) GetPayload() *iamclientmodels.ModelNamespaceInvitationHistoryUserV4Response {
	return o.Payload
}

func (o *AdminGetNamespaceUserInvitationHistoryV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelNamespaceInvitationHistoryUserV4Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetNamespaceUserInvitationHistoryV4BadRequest creates a AdminGetNamespaceUserInvitationHistoryV4BadRequest with default headers values
func NewAdminGetNamespaceUserInvitationHistoryV4BadRequest() *AdminGetNamespaceUserInvitationHistoryV4BadRequest {
	return &AdminGetNamespaceUserInvitationHistoryV4BadRequest{}
}

/*AdminGetNamespaceUserInvitationHistoryV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetNamespaceUserInvitationHistoryV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceUserInvitationHistoryV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users][%d] adminGetNamespaceUserInvitationHistoryV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetNamespaceUserInvitationHistoryV4BadRequest) ToJSONString() string {
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

func (o *AdminGetNamespaceUserInvitationHistoryV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceUserInvitationHistoryV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetNamespaceUserInvitationHistoryV4Unauthorized creates a AdminGetNamespaceUserInvitationHistoryV4Unauthorized with default headers values
func NewAdminGetNamespaceUserInvitationHistoryV4Unauthorized() *AdminGetNamespaceUserInvitationHistoryV4Unauthorized {
	return &AdminGetNamespaceUserInvitationHistoryV4Unauthorized{}
}

/*AdminGetNamespaceUserInvitationHistoryV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetNamespaceUserInvitationHistoryV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceUserInvitationHistoryV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users][%d] adminGetNamespaceUserInvitationHistoryV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetNamespaceUserInvitationHistoryV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetNamespaceUserInvitationHistoryV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceUserInvitationHistoryV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetNamespaceUserInvitationHistoryV4Forbidden creates a AdminGetNamespaceUserInvitationHistoryV4Forbidden with default headers values
func NewAdminGetNamespaceUserInvitationHistoryV4Forbidden() *AdminGetNamespaceUserInvitationHistoryV4Forbidden {
	return &AdminGetNamespaceUserInvitationHistoryV4Forbidden{}
}

/*AdminGetNamespaceUserInvitationHistoryV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetNamespaceUserInvitationHistoryV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceUserInvitationHistoryV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users][%d] adminGetNamespaceUserInvitationHistoryV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetNamespaceUserInvitationHistoryV4Forbidden) ToJSONString() string {
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

func (o *AdminGetNamespaceUserInvitationHistoryV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceUserInvitationHistoryV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetNamespaceUserInvitationHistoryV4InternalServerError creates a AdminGetNamespaceUserInvitationHistoryV4InternalServerError with default headers values
func NewAdminGetNamespaceUserInvitationHistoryV4InternalServerError() *AdminGetNamespaceUserInvitationHistoryV4InternalServerError {
	return &AdminGetNamespaceUserInvitationHistoryV4InternalServerError{}
}

/*AdminGetNamespaceUserInvitationHistoryV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetNamespaceUserInvitationHistoryV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceUserInvitationHistoryV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users][%d] adminGetNamespaceUserInvitationHistoryV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetNamespaceUserInvitationHistoryV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetNamespaceUserInvitationHistoryV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceUserInvitationHistoryV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetNamespaceUserInvitationHistoryV4NotImplemented creates a AdminGetNamespaceUserInvitationHistoryV4NotImplemented with default headers values
func NewAdminGetNamespaceUserInvitationHistoryV4NotImplemented() *AdminGetNamespaceUserInvitationHistoryV4NotImplemented {
	return &AdminGetNamespaceUserInvitationHistoryV4NotImplemented{}
}

/*AdminGetNamespaceUserInvitationHistoryV4NotImplemented handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20024</td><td>not implemented</td></tr></table>
*/
type AdminGetNamespaceUserInvitationHistoryV4NotImplemented struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceUserInvitationHistoryV4NotImplemented) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories/users][%d] adminGetNamespaceUserInvitationHistoryV4NotImplemented  %+v", 501, o.ToJSONString())
}

func (o *AdminGetNamespaceUserInvitationHistoryV4NotImplemented) ToJSONString() string {
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

func (o *AdminGetNamespaceUserInvitationHistoryV4NotImplemented) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceUserInvitationHistoryV4NotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
