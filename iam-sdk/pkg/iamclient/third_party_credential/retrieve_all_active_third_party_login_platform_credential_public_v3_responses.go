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

// RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader is a Reader for the RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 structure.
type RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/platforms/clients/active returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK() *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK handles this case with default header values.

  All Active Third Party Credential Retrieved
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK struct {
	Payload []*iamclientmodels.ModelPublicThirdPartyPlatformInfo
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK) GetPayload() []*iamclientmodels.ModelPublicThirdPartyPlatformInfo {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized() *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden() *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound() *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError() *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
