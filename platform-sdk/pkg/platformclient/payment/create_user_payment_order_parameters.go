// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateUserPaymentOrderParams creates a new CreateUserPaymentOrderParams object
// with the default values initialized.
func NewCreateUserPaymentOrderParams() *CreateUserPaymentOrderParams {
	var ()
	return &CreateUserPaymentOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateUserPaymentOrderParamsWithTimeout creates a new CreateUserPaymentOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateUserPaymentOrderParamsWithTimeout(timeout time.Duration) *CreateUserPaymentOrderParams {
	var ()
	return &CreateUserPaymentOrderParams{

		timeout: timeout,
	}
}

// NewCreateUserPaymentOrderParamsWithContext creates a new CreateUserPaymentOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateUserPaymentOrderParamsWithContext(ctx context.Context) *CreateUserPaymentOrderParams {
	var ()
	return &CreateUserPaymentOrderParams{

		Context: ctx,
	}
}

// NewCreateUserPaymentOrderParamsWithHTTPClient creates a new CreateUserPaymentOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateUserPaymentOrderParamsWithHTTPClient(client *http.Client) *CreateUserPaymentOrderParams {
	var ()
	return &CreateUserPaymentOrderParams{
		HTTPClient: client,
	}
}

/*CreateUserPaymentOrderParams contains all the parameters to send to the API endpoint
for the create user payment order operation typically these are written to a http.Request
*/
type CreateUserPaymentOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentOrderCreate
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

// WithTimeout adds the timeout to the create user payment order params
func (o *CreateUserPaymentOrderParams) WithTimeout(timeout time.Duration) *CreateUserPaymentOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create user payment order params
func (o *CreateUserPaymentOrderParams) WithContext(ctx context.Context) *CreateUserPaymentOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create user payment order params
func (o *CreateUserPaymentOrderParams) WithHTTPClient(client *http.Client) *CreateUserPaymentOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateUserPaymentOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create user payment order params
func (o *CreateUserPaymentOrderParams) WithBody(body *platformclientmodels.PaymentOrderCreate) *CreateUserPaymentOrderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetBody(body *platformclientmodels.PaymentOrderCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create user payment order params
func (o *CreateUserPaymentOrderParams) WithNamespace(namespace string) *CreateUserPaymentOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the create user payment order params
func (o *CreateUserPaymentOrderParams) WithUserID(userID string) *CreateUserPaymentOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create user payment order params
func (o *CreateUserPaymentOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateUserPaymentOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
