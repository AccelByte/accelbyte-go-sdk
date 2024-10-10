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

// SetDefaultPolicyReader is a Reader for the SetDefaultPolicy structure.
type SetDefaultPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetDefaultPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetDefaultPolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetDefaultPolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetDefaultPolicyOK creates a SetDefaultPolicyOK with default headers values
func NewSetDefaultPolicyOK() *SetDefaultPolicyOK {
	return &SetDefaultPolicyOK{}
}

/*SetDefaultPolicyOK handles this case with default header values.

  Successful operation
*/
type SetDefaultPolicyOK struct {
}

func (o *SetDefaultPolicyOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default][%d] setDefaultPolicyOK ", 200)
}

func (o *SetDefaultPolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSetDefaultPolicyBadRequest creates a SetDefaultPolicyBadRequest with default headers values
func NewSetDefaultPolicyBadRequest() *SetDefaultPolicyBadRequest {
	return &SetDefaultPolicyBadRequest{}
}

/*SetDefaultPolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_localize_policy_version</td></tr></table>
*/
type SetDefaultPolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *SetDefaultPolicyBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default][%d] setDefaultPolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetDefaultPolicyBadRequest) ToJSONString() string {
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

func (o *SetDefaultPolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SetDefaultPolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
