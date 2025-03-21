// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// AddThirdPartyLoginPlatformCredentialV3Reader is a Reader for the AddThirdPartyLoginPlatformCredentialV3 structure.
type AddThirdPartyLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddThirdPartyLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAddThirdPartyLoginPlatformCredentialV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddThirdPartyLoginPlatformCredentialV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddThirdPartyLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddThirdPartyLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddThirdPartyLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddThirdPartyLoginPlatformCredentialV3Created creates a AddThirdPartyLoginPlatformCredentialV3Created with default headers values
func NewAddThirdPartyLoginPlatformCredentialV3Created() *AddThirdPartyLoginPlatformCredentialV3Created {
	return &AddThirdPartyLoginPlatformCredentialV3Created{}
}

/*AddThirdPartyLoginPlatformCredentialV3Created handles this case with default header values.

  Third Party Credential Created
*/
type AddThirdPartyLoginPlatformCredentialV3Created struct {
	Payload *iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse
}

func (o *AddThirdPartyLoginPlatformCredentialV3Created) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] addThirdPartyLoginPlatformCredentialV3Created  %+v", 201, o.ToJSONString())
}

func (o *AddThirdPartyLoginPlatformCredentialV3Created) ToJSONString() string {
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

func (o *AddThirdPartyLoginPlatformCredentialV3Created) GetPayload() *iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse {
	return o.Payload
}

func (o *AddThirdPartyLoginPlatformCredentialV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddThirdPartyLoginPlatformCredentialV3BadRequest creates a AddThirdPartyLoginPlatformCredentialV3BadRequest with default headers values
func NewAddThirdPartyLoginPlatformCredentialV3BadRequest() *AddThirdPartyLoginPlatformCredentialV3BadRequest {
	return &AddThirdPartyLoginPlatformCredentialV3BadRequest{}
}

/*AddThirdPartyLoginPlatformCredentialV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AddThirdPartyLoginPlatformCredentialV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddThirdPartyLoginPlatformCredentialV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] addThirdPartyLoginPlatformCredentialV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddThirdPartyLoginPlatformCredentialV3BadRequest) ToJSONString() string {
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

func (o *AddThirdPartyLoginPlatformCredentialV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddThirdPartyLoginPlatformCredentialV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddThirdPartyLoginPlatformCredentialV3Unauthorized creates a AddThirdPartyLoginPlatformCredentialV3Unauthorized with default headers values
func NewAddThirdPartyLoginPlatformCredentialV3Unauthorized() *AddThirdPartyLoginPlatformCredentialV3Unauthorized {
	return &AddThirdPartyLoginPlatformCredentialV3Unauthorized{}
}

/*AddThirdPartyLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddThirdPartyLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddThirdPartyLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] addThirdPartyLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddThirdPartyLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *AddThirdPartyLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddThirdPartyLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddThirdPartyLoginPlatformCredentialV3Forbidden creates a AddThirdPartyLoginPlatformCredentialV3Forbidden with default headers values
func NewAddThirdPartyLoginPlatformCredentialV3Forbidden() *AddThirdPartyLoginPlatformCredentialV3Forbidden {
	return &AddThirdPartyLoginPlatformCredentialV3Forbidden{}
}

/*AddThirdPartyLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AddThirdPartyLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddThirdPartyLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] addThirdPartyLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AddThirdPartyLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *AddThirdPartyLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddThirdPartyLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddThirdPartyLoginPlatformCredentialV3InternalServerError creates a AddThirdPartyLoginPlatformCredentialV3InternalServerError with default headers values
func NewAddThirdPartyLoginPlatformCredentialV3InternalServerError() *AddThirdPartyLoginPlatformCredentialV3InternalServerError {
	return &AddThirdPartyLoginPlatformCredentialV3InternalServerError{}
}

/*AddThirdPartyLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AddThirdPartyLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddThirdPartyLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] addThirdPartyLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AddThirdPartyLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *AddThirdPartyLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddThirdPartyLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
