// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// AdminUpdateClientSecretV3Reader is a Reader for the AdminUpdateClientSecretV3 structure.
type AdminUpdateClientSecretV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateClientSecretV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateClientSecretV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateClientSecretV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateClientSecretV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateClientSecretV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateClientSecretV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/{clientId}/secret returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateClientSecretV3NoContent creates a AdminUpdateClientSecretV3NoContent with default headers values
func NewAdminUpdateClientSecretV3NoContent() *AdminUpdateClientSecretV3NoContent {
	return &AdminUpdateClientSecretV3NoContent{}
}

/*AdminUpdateClientSecretV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateClientSecretV3NoContent struct {
}

func (o *AdminUpdateClientSecretV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/{clientId}/secret][%d] adminUpdateClientSecretV3NoContent ", 204)
}

func (o *AdminUpdateClientSecretV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateClientSecretV3BadRequest creates a AdminUpdateClientSecretV3BadRequest with default headers values
func NewAdminUpdateClientSecretV3BadRequest() *AdminUpdateClientSecretV3BadRequest {
	return &AdminUpdateClientSecretV3BadRequest{}
}

/*AdminUpdateClientSecretV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminUpdateClientSecretV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateClientSecretV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/{clientId}/secret][%d] adminUpdateClientSecretV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateClientSecretV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateClientSecretV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateClientSecretV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateClientSecretV3Unauthorized creates a AdminUpdateClientSecretV3Unauthorized with default headers values
func NewAdminUpdateClientSecretV3Unauthorized() *AdminUpdateClientSecretV3Unauthorized {
	return &AdminUpdateClientSecretV3Unauthorized{}
}

/*AdminUpdateClientSecretV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateClientSecretV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateClientSecretV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/{clientId}/secret][%d] adminUpdateClientSecretV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateClientSecretV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateClientSecretV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateClientSecretV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateClientSecretV3Forbidden creates a AdminUpdateClientSecretV3Forbidden with default headers values
func NewAdminUpdateClientSecretV3Forbidden() *AdminUpdateClientSecretV3Forbidden {
	return &AdminUpdateClientSecretV3Forbidden{}
}

/*AdminUpdateClientSecretV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateClientSecretV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateClientSecretV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/{clientId}/secret][%d] adminUpdateClientSecretV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateClientSecretV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateClientSecretV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateClientSecretV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateClientSecretV3NotFound creates a AdminUpdateClientSecretV3NotFound with default headers values
func NewAdminUpdateClientSecretV3NotFound() *AdminUpdateClientSecretV3NotFound {
	return &AdminUpdateClientSecretV3NotFound{}
}

/*AdminUpdateClientSecretV3NotFound handles this case with default header values.

  Data not found
*/
type AdminUpdateClientSecretV3NotFound struct {
}

func (o *AdminUpdateClientSecretV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/{clientId}/secret][%d] adminUpdateClientSecretV3NotFound ", 404)
}

func (o *AdminUpdateClientSecretV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
