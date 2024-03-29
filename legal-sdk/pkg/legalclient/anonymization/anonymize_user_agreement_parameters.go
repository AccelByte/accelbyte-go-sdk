// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAnonymizeUserAgreementParams creates a new AnonymizeUserAgreementParams object
// with the default values initialized.
func NewAnonymizeUserAgreementParams() *AnonymizeUserAgreementParams {
	var ()
	return &AnonymizeUserAgreementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeUserAgreementParamsWithTimeout creates a new AnonymizeUserAgreementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeUserAgreementParamsWithTimeout(timeout time.Duration) *AnonymizeUserAgreementParams {
	var ()
	return &AnonymizeUserAgreementParams{

		timeout: timeout,
	}
}

// NewAnonymizeUserAgreementParamsWithContext creates a new AnonymizeUserAgreementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeUserAgreementParamsWithContext(ctx context.Context) *AnonymizeUserAgreementParams {
	var ()
	return &AnonymizeUserAgreementParams{

		Context: ctx,
	}
}

// NewAnonymizeUserAgreementParamsWithHTTPClient creates a new AnonymizeUserAgreementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeUserAgreementParamsWithHTTPClient(client *http.Client) *AnonymizeUserAgreementParams {
	var ()
	return &AnonymizeUserAgreementParams{
		HTTPClient: client,
	}
}

/*AnonymizeUserAgreementParams contains all the parameters to send to the API endpoint
for the anonymize user agreement operation typically these are written to a http.Request
*/
type AnonymizeUserAgreementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) WithTimeout(timeout time.Duration) *AnonymizeUserAgreementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) WithContext(ctx context.Context) *AnonymizeUserAgreementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) WithHTTPClient(client *http.Client) *AnonymizeUserAgreementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AnonymizeUserAgreementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithUserID adds the userID to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) WithUserID(userID string) *AnonymizeUserAgreementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize user agreement params
func (o *AnonymizeUserAgreementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeUserAgreementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
