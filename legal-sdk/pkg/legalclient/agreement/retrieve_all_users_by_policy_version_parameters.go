// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

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

// NewRetrieveAllUsersByPolicyVersionParams creates a new RetrieveAllUsersByPolicyVersionParams object
// with the default values initialized.
func NewRetrieveAllUsersByPolicyVersionParams() *RetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllUsersByPolicyVersionParamsWithTimeout creates a new RetrieveAllUsersByPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllUsersByPolicyVersionParamsWithTimeout(timeout time.Duration) *RetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewRetrieveAllUsersByPolicyVersionParamsWithContext creates a new RetrieveAllUsersByPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllUsersByPolicyVersionParamsWithContext(ctx context.Context) *RetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewRetrieveAllUsersByPolicyVersionParamsWithHTTPClient creates a new RetrieveAllUsersByPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllUsersByPolicyVersionParamsWithHTTPClient(client *http.Client) *RetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &RetrieveAllUsersByPolicyVersionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*RetrieveAllUsersByPolicyVersionParams contains all the parameters to send to the API endpoint
for the retrieve all users by policy version operation typically these are written to a http.Request
*/
type RetrieveAllUsersByPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithTimeout(timeout time.Duration) *RetrieveAllUsersByPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithContext(ctx context.Context) *RetrieveAllUsersByPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithHTTPClient(client *http.Client) *RetrieveAllUsersByPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAllUsersByPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKeyword adds the keyword to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithKeyword(keyword *string) *RetrieveAllUsersByPolicyVersionParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithLimit(limit *int32) *RetrieveAllUsersByPolicyVersionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithOffset(offset *int32) *RetrieveAllUsersByPolicyVersionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithPolicyVersionID adds the policyVersionID to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *RetrieveAllUsersByPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the retrieve all users by policy version params
func (o *RetrieveAllUsersByPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllUsersByPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
