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

// NewAnonymizeRevocationParams creates a new AnonymizeRevocationParams object
// with the default values initialized.
func NewAnonymizeRevocationParams() *AnonymizeRevocationParams {
	var ()
	return &AnonymizeRevocationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeRevocationParamsWithTimeout creates a new AnonymizeRevocationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeRevocationParamsWithTimeout(timeout time.Duration) *AnonymizeRevocationParams {
	var ()
	return &AnonymizeRevocationParams{

		timeout: timeout,
	}
}

// NewAnonymizeRevocationParamsWithContext creates a new AnonymizeRevocationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeRevocationParamsWithContext(ctx context.Context) *AnonymizeRevocationParams {
	var ()
	return &AnonymizeRevocationParams{

		Context: ctx,
	}
}

// NewAnonymizeRevocationParamsWithHTTPClient creates a new AnonymizeRevocationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeRevocationParamsWithHTTPClient(client *http.Client) *AnonymizeRevocationParams {
	var ()
	return &AnonymizeRevocationParams{
		HTTPClient: client,
	}
}

/*AnonymizeRevocationParams contains all the parameters to send to the API endpoint
for the anonymize revocation operation typically these are written to a http.Request
*/
type AnonymizeRevocationParams struct {

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

// WithTimeout adds the timeout to the anonymize revocation params
func (o *AnonymizeRevocationParams) WithTimeout(timeout time.Duration) *AnonymizeRevocationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize revocation params
func (o *AnonymizeRevocationParams) WithContext(ctx context.Context) *AnonymizeRevocationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize revocation params
func (o *AnonymizeRevocationParams) WithHTTPClient(client *http.Client) *AnonymizeRevocationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AnonymizeRevocationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the anonymize revocation params
func (o *AnonymizeRevocationParams) WithNamespace(namespace string) *AnonymizeRevocationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize revocation params
func (o *AnonymizeRevocationParams) WithUserID(userID string) *AnonymizeRevocationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize revocation params
func (o *AnonymizeRevocationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeRevocationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
