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

// NewAnonymizeSubscriptionParams creates a new AnonymizeSubscriptionParams object
// with the default values initialized.
func NewAnonymizeSubscriptionParams() *AnonymizeSubscriptionParams {
	var ()
	return &AnonymizeSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeSubscriptionParamsWithTimeout creates a new AnonymizeSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeSubscriptionParamsWithTimeout(timeout time.Duration) *AnonymizeSubscriptionParams {
	var ()
	return &AnonymizeSubscriptionParams{

		timeout: timeout,
	}
}

// NewAnonymizeSubscriptionParamsWithContext creates a new AnonymizeSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeSubscriptionParamsWithContext(ctx context.Context) *AnonymizeSubscriptionParams {
	var ()
	return &AnonymizeSubscriptionParams{

		Context: ctx,
	}
}

// NewAnonymizeSubscriptionParamsWithHTTPClient creates a new AnonymizeSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeSubscriptionParamsWithHTTPClient(client *http.Client) *AnonymizeSubscriptionParams {
	var ()
	return &AnonymizeSubscriptionParams{
		HTTPClient: client,
	}
}

/*AnonymizeSubscriptionParams contains all the parameters to send to the API endpoint
for the anonymize subscription operation typically these are written to a http.Request
*/
type AnonymizeSubscriptionParams struct {

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

// WithTimeout adds the timeout to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) WithTimeout(timeout time.Duration) *AnonymizeSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) WithContext(ctx context.Context) *AnonymizeSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) WithHTTPClient(client *http.Client) *AnonymizeSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AnonymizeSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) WithNamespace(namespace string) *AnonymizeSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) WithUserID(userID string) *AnonymizeSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize subscription params
func (o *AnonymizeSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
