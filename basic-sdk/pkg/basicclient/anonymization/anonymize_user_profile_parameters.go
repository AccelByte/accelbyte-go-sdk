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

// NewAnonymizeUserProfileParams creates a new AnonymizeUserProfileParams object
// with the default values initialized.
func NewAnonymizeUserProfileParams() *AnonymizeUserProfileParams {
	var ()
	return &AnonymizeUserProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeUserProfileParamsWithTimeout creates a new AnonymizeUserProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeUserProfileParamsWithTimeout(timeout time.Duration) *AnonymizeUserProfileParams {
	var ()
	return &AnonymizeUserProfileParams{

		timeout: timeout,
	}
}

// NewAnonymizeUserProfileParamsWithContext creates a new AnonymizeUserProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeUserProfileParamsWithContext(ctx context.Context) *AnonymizeUserProfileParams {
	var ()
	return &AnonymizeUserProfileParams{

		Context: ctx,
	}
}

// NewAnonymizeUserProfileParamsWithHTTPClient creates a new AnonymizeUserProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeUserProfileParamsWithHTTPClient(client *http.Client) *AnonymizeUserProfileParams {
	var ()
	return &AnonymizeUserProfileParams{
		HTTPClient: client,
	}
}

/*AnonymizeUserProfileParams contains all the parameters to send to the API endpoint
for the anonymize user profile operation typically these are written to a http.Request
*/
type AnonymizeUserProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the anonymize user profile params
func (o *AnonymizeUserProfileParams) WithTimeout(timeout time.Duration) *AnonymizeUserProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize user profile params
func (o *AnonymizeUserProfileParams) WithContext(ctx context.Context) *AnonymizeUserProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize user profile params
func (o *AnonymizeUserProfileParams) WithHTTPClient(client *http.Client) *AnonymizeUserProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AnonymizeUserProfileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the anonymize user profile params
func (o *AnonymizeUserProfileParams) WithNamespace(namespace string) *AnonymizeUserProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize user profile params
func (o *AnonymizeUserProfileParams) WithUserID(userID string) *AnonymizeUserProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize user profile params
func (o *AnonymizeUserProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeUserProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
