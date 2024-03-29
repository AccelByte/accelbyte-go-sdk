// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewPublicReportUserParams creates a new PublicReportUserParams object
// with the default values initialized.
func NewPublicReportUserParams() *PublicReportUserParams {
	var ()
	return &PublicReportUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicReportUserParamsWithTimeout creates a new PublicReportUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicReportUserParamsWithTimeout(timeout time.Duration) *PublicReportUserParams {
	var ()
	return &PublicReportUserParams{

		timeout: timeout,
	}
}

// NewPublicReportUserParamsWithContext creates a new PublicReportUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicReportUserParamsWithContext(ctx context.Context) *PublicReportUserParams {
	var ()
	return &PublicReportUserParams{

		Context: ctx,
	}
}

// NewPublicReportUserParamsWithHTTPClient creates a new PublicReportUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicReportUserParamsWithHTTPClient(client *http.Client) *PublicReportUserParams {
	var ()
	return &PublicReportUserParams{
		HTTPClient: client,
	}
}

/*PublicReportUserParams contains all the parameters to send to the API endpoint
for the public report user operation typically these are written to a http.Request
*/
type PublicReportUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserReportRequest
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  reporter user id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public report user params
func (o *PublicReportUserParams) WithTimeout(timeout time.Duration) *PublicReportUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public report user params
func (o *PublicReportUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public report user params
func (o *PublicReportUserParams) WithContext(ctx context.Context) *PublicReportUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public report user params
func (o *PublicReportUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public report user params
func (o *PublicReportUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public report user params
func (o *PublicReportUserParams) WithHTTPClient(client *http.Client) *PublicReportUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public report user params
func (o *PublicReportUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public report user params
func (o *PublicReportUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicReportUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public report user params
func (o *PublicReportUserParams) WithBody(body *basicclientmodels.UserReportRequest) *PublicReportUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public report user params
func (o *PublicReportUserParams) SetBody(body *basicclientmodels.UserReportRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public report user params
func (o *PublicReportUserParams) WithNamespace(namespace string) *PublicReportUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public report user params
func (o *PublicReportUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public report user params
func (o *PublicReportUserParams) WithUserID(userID string) *PublicReportUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public report user params
func (o *PublicReportUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicReportUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
