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

// NewAnonymizePaymentParams creates a new AnonymizePaymentParams object
// with the default values initialized.
func NewAnonymizePaymentParams() *AnonymizePaymentParams {
	var ()
	return &AnonymizePaymentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizePaymentParamsWithTimeout creates a new AnonymizePaymentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizePaymentParamsWithTimeout(timeout time.Duration) *AnonymizePaymentParams {
	var ()
	return &AnonymizePaymentParams{

		timeout: timeout,
	}
}

// NewAnonymizePaymentParamsWithContext creates a new AnonymizePaymentParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizePaymentParamsWithContext(ctx context.Context) *AnonymizePaymentParams {
	var ()
	return &AnonymizePaymentParams{

		Context: ctx,
	}
}

// NewAnonymizePaymentParamsWithHTTPClient creates a new AnonymizePaymentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizePaymentParamsWithHTTPClient(client *http.Client) *AnonymizePaymentParams {
	var ()
	return &AnonymizePaymentParams{
		HTTPClient: client,
	}
}

/*AnonymizePaymentParams contains all the parameters to send to the API endpoint
for the anonymize payment operation typically these are written to a http.Request
*/
type AnonymizePaymentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the anonymize payment params
func (o *AnonymizePaymentParams) WithTimeout(timeout time.Duration) *AnonymizePaymentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize payment params
func (o *AnonymizePaymentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize payment params
func (o *AnonymizePaymentParams) WithContext(ctx context.Context) *AnonymizePaymentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize payment params
func (o *AnonymizePaymentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize payment params
func (o *AnonymizePaymentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize payment params
func (o *AnonymizePaymentParams) WithHTTPClient(client *http.Client) *AnonymizePaymentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize payment params
func (o *AnonymizePaymentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize payment params
func (o *AnonymizePaymentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AnonymizePaymentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the anonymize payment params
func (o *AnonymizePaymentParams) WithNamespace(namespace string) *AnonymizePaymentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize payment params
func (o *AnonymizePaymentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize payment params
func (o *AnonymizePaymentParams) WithUserID(userID string) *AnonymizePaymentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize payment params
func (o *AnonymizePaymentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizePaymentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

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
