// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// PlatformTokenRequestHandlerReader is a Reader for the PlatformTokenRequestHandler structure.
type PlatformTokenRequestHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformTokenRequestHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformTokenRequestHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformTokenRequestHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformTokenRequestHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformTokenRequestHandlerOK creates a PlatformTokenRequestHandlerOK with default headers values
func NewPlatformTokenRequestHandlerOK() *PlatformTokenRequestHandlerOK {
	return &PlatformTokenRequestHandlerOK{}
}

/*PlatformTokenRequestHandlerOK handles this case with default header values.

  Access Token returned
*/
type PlatformTokenRequestHandlerOK struct {
	Payload *iamclientmodels.OauthmodelTokenResponse
}

func (o *PlatformTokenRequestHandlerOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token][%d] platformTokenRequestHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *PlatformTokenRequestHandlerOK) ToJSONString() string {
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

func (o *PlatformTokenRequestHandlerOK) GetPayload() *iamclientmodels.OauthmodelTokenResponse {
	return o.Payload
}

func (o *PlatformTokenRequestHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenRequestHandlerBadRequest creates a PlatformTokenRequestHandlerBadRequest with default headers values
func NewPlatformTokenRequestHandlerBadRequest() *PlatformTokenRequestHandlerBadRequest {
	return &PlatformTokenRequestHandlerBadRequest{}
}

/*PlatformTokenRequestHandlerBadRequest handles this case with default header values.

  General request error
*/
type PlatformTokenRequestHandlerBadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRequestHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token][%d] platformTokenRequestHandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PlatformTokenRequestHandlerBadRequest) ToJSONString() string {
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

func (o *PlatformTokenRequestHandlerBadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRequestHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenRequestHandlerUnauthorized creates a PlatformTokenRequestHandlerUnauthorized with default headers values
func NewPlatformTokenRequestHandlerUnauthorized() *PlatformTokenRequestHandlerUnauthorized {
	return &PlatformTokenRequestHandlerUnauthorized{}
}

/*PlatformTokenRequestHandlerUnauthorized handles this case with default header values.

  Client authentication failed
*/
type PlatformTokenRequestHandlerUnauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRequestHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token][%d] platformTokenRequestHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformTokenRequestHandlerUnauthorized) ToJSONString() string {
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

func (o *PlatformTokenRequestHandlerUnauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRequestHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
