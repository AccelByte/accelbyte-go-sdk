// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement_with_namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewRetrieveAllUsersByPolicyVersion1Params creates a new RetrieveAllUsersByPolicyVersion1Params object
// with the default values initialized.
func NewRetrieveAllUsersByPolicyVersion1Params() *RetrieveAllUsersByPolicyVersion1Params {
	var (
		convertGameUserIdDefault = bool(false)
		limitDefault             = int32(20)
		offsetDefault            = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersion1Params{
		ConvertGameUserID: &convertGameUserIdDefault,
		Limit:             &limitDefault,
		Offset:            &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllUsersByPolicyVersion1ParamsWithTimeout creates a new RetrieveAllUsersByPolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllUsersByPolicyVersion1ParamsWithTimeout(timeout time.Duration) *RetrieveAllUsersByPolicyVersion1Params {
	var (
		convertGameUserIdDefault = bool(false)
		limitDefault             = int32(20)
		offsetDefault            = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersion1Params{
		ConvertGameUserID: &convertGameUserIdDefault,
		Limit:             &limitDefault,
		Offset:            &offsetDefault,

		timeout: timeout,
	}
}

// NewRetrieveAllUsersByPolicyVersion1ParamsWithContext creates a new RetrieveAllUsersByPolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllUsersByPolicyVersion1ParamsWithContext(ctx context.Context) *RetrieveAllUsersByPolicyVersion1Params {
	var (
		convertGameUserIdDefault = bool(false)
		limitDefault             = int32(20)
		offsetDefault            = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersion1Params{
		ConvertGameUserID: &convertGameUserIdDefault,
		Limit:             &limitDefault,
		Offset:            &offsetDefault,

		Context: ctx,
	}
}

// NewRetrieveAllUsersByPolicyVersion1ParamsWithHTTPClient creates a new RetrieveAllUsersByPolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllUsersByPolicyVersion1ParamsWithHTTPClient(client *http.Client) *RetrieveAllUsersByPolicyVersion1Params {
	var (
		convertGameUserIdDefault = bool(false)
		limitDefault             = int32(20)
		offsetDefault            = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersion1Params{
		ConvertGameUserID: &convertGameUserIdDefault,
		Limit:             &limitDefault,
		Offset:            &offsetDefault,
		HTTPClient:        client,
	}
}

/*RetrieveAllUsersByPolicyVersion1Params contains all the parameters to send to the API endpoint
for the retrieve all users by policy version 1 operation typically these are written to a http.Request
*/
type RetrieveAllUsersByPolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ConvertGameUserID
	  [Only for publisher legal scenario] If it is true, when a game user accept this publisher legal, API will return publisher user id

	*/
	ConvertGameUserID *bool
	/*Keyword
	  display name or email or username

	*/
	Keyword *string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*PolicyVersionID*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithTimeout(timeout time.Duration) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithContext(ctx context.Context) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithHTTPClient(client *http.Client) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithNamespace(namespace string) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithConvertGameUserID adds the convertGameUserID to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithConvertGameUserID(convertGameUserID *bool) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetConvertGameUserID(convertGameUserID)
	return o
}

// SetConvertGameUserID adds the convertGameUserId to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetConvertGameUserID(convertGameUserID *bool) {
	o.ConvertGameUserID = convertGameUserID
}

// WithKeyword adds the keyword to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithKeyword(keyword *string) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithLimit(limit *int32) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithOffset(offset *int32) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithPolicyVersionID adds the policyVersionID to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) WithPolicyVersionID(policyVersionID string) *RetrieveAllUsersByPolicyVersion1Params {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the retrieve all users by policy version 1 params
func (o *RetrieveAllUsersByPolicyVersion1Params) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllUsersByPolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ConvertGameUserID != nil {

		// query param convertGameUserId
		var qrConvertGameUserID bool
		if o.ConvertGameUserID != nil {
			qrConvertGameUserID = *o.ConvertGameUserID
		}
		qConvertGameUserID := swag.FormatBool(qrConvertGameUserID)
		if qConvertGameUserID != "" {
			if err := r.SetQueryParam("convertGameUserId", qConvertGameUserID); err != nil {
				return err
			}
		}

	}

	if o.Keyword != nil {

		// query param keyword
		var qrKeyword string
		if o.Keyword != nil {
			qrKeyword = *o.Keyword
		}
		qKeyword := qrKeyword
		if qKeyword != "" {
			if err := r.SetQueryParam("keyword", qKeyword); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param policyVersionId
	qrPolicyVersionID := o.PolicyVersionID
	qPolicyVersionID := qrPolicyVersionID
	if qPolicyVersionID != "" {
		if err := r.SetQueryParam("policyVersionId", qPolicyVersionID); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
