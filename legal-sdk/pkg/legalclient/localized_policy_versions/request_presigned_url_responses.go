// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// RequestPresignedURLReader is a Reader for the RequestPresignedURL structure.
type RequestPresignedURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RequestPresignedURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewRequestPresignedURLCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRequestPresignedURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRequestPresignedURLCreated creates a RequestPresignedURLCreated with default headers values
func NewRequestPresignedURLCreated() *RequestPresignedURLCreated {
	return &RequestPresignedURLCreated{}
}

/*RequestPresignedURLCreated handles this case with default header values.

  successful operation
*/
type RequestPresignedURLCreated struct {
	Payload *legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse
}

func (o *RequestPresignedURLCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments][%d] requestPresignedUrlCreated  %+v", 201, o.ToJSONString())
}

func (o *RequestPresignedURLCreated) ToJSONString() string {
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

func (o *RequestPresignedURLCreated) GetPayload() *legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse {
	return o.Payload
}

func (o *RequestPresignedURLCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRequestPresignedURLBadRequest creates a RequestPresignedURLBadRequest with default headers values
func NewRequestPresignedURLBadRequest() *RequestPresignedURLBadRequest {
	return &RequestPresignedURLBadRequest{}
}

/*RequestPresignedURLBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40034</td><td>errors.net.accelbyte.platform.legal.invalid_file_type</td></tr><tr><td>40037</td><td>errors.net.accelbyte.platform.legal.invalid_localized_policy_version</td></tr><tr><td>40042</td><td>errors.net.accelbyte.platform.legal.policy_version_freezed</td></tr></table>
*/
type RequestPresignedURLBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RequestPresignedURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments][%d] requestPresignedUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RequestPresignedURLBadRequest) ToJSONString() string {
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

func (o *RequestPresignedURLBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RequestPresignedURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
