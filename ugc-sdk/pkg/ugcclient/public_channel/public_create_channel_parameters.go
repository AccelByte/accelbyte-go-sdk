// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_channel

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewPublicCreateChannelParams creates a new PublicCreateChannelParams object
// with the default values initialized.
func NewPublicCreateChannelParams() *PublicCreateChannelParams {
	var ()
	return &PublicCreateChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateChannelParamsWithTimeout creates a new PublicCreateChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateChannelParamsWithTimeout(timeout time.Duration) *PublicCreateChannelParams {
	var ()
	return &PublicCreateChannelParams{

		timeout: timeout,
	}
}

// NewPublicCreateChannelParamsWithContext creates a new PublicCreateChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateChannelParamsWithContext(ctx context.Context) *PublicCreateChannelParams {
	var ()
	return &PublicCreateChannelParams{

		Context: ctx,
	}
}

// NewPublicCreateChannelParamsWithHTTPClient creates a new PublicCreateChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateChannelParamsWithHTTPClient(client *http.Client) *PublicCreateChannelParams {
	var ()
	return &PublicCreateChannelParams{
		HTTPClient: client,
	}
}

/*PublicCreateChannelParams contains all the parameters to send to the API endpoint
for the public create channel operation typically these are written to a http.Request
*/
type PublicCreateChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsPublicChannelRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public create channel params
func (o *PublicCreateChannelParams) WithTimeout(timeout time.Duration) *PublicCreateChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create channel params
func (o *PublicCreateChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create channel params
func (o *PublicCreateChannelParams) WithContext(ctx context.Context) *PublicCreateChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create channel params
func (o *PublicCreateChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create channel params
func (o *PublicCreateChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create channel params
func (o *PublicCreateChannelParams) WithHTTPClient(client *http.Client) *PublicCreateChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create channel params
func (o *PublicCreateChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create channel params
func (o *PublicCreateChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCreateChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public create channel params
func (o *PublicCreateChannelParams) WithBody(body *ugcclientmodels.ModelsPublicChannelRequest) *PublicCreateChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public create channel params
func (o *PublicCreateChannelParams) SetBody(body *ugcclientmodels.ModelsPublicChannelRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public create channel params
func (o *PublicCreateChannelParams) WithNamespace(namespace string) *PublicCreateChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create channel params
func (o *PublicCreateChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public create channel params
func (o *PublicCreateChannelParams) WithUserID(userID string) *PublicCreateChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public create channel params
func (o *PublicCreateChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
