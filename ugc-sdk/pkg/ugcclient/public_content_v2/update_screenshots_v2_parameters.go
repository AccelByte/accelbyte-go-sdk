// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewUpdateScreenshotsV2Params creates a new UpdateScreenshotsV2Params object
// with the default values initialized.
func NewUpdateScreenshotsV2Params() *UpdateScreenshotsV2Params {
	var ()
	return &UpdateScreenshotsV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateScreenshotsV2ParamsWithTimeout creates a new UpdateScreenshotsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateScreenshotsV2ParamsWithTimeout(timeout time.Duration) *UpdateScreenshotsV2Params {
	var ()
	return &UpdateScreenshotsV2Params{

		timeout: timeout,
	}
}

// NewUpdateScreenshotsV2ParamsWithContext creates a new UpdateScreenshotsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateScreenshotsV2ParamsWithContext(ctx context.Context) *UpdateScreenshotsV2Params {
	var ()
	return &UpdateScreenshotsV2Params{

		Context: ctx,
	}
}

// NewUpdateScreenshotsV2ParamsWithHTTPClient creates a new UpdateScreenshotsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateScreenshotsV2ParamsWithHTTPClient(client *http.Client) *UpdateScreenshotsV2Params {
	var ()
	return &UpdateScreenshotsV2Params{
		HTTPClient: client,
	}
}

/*UpdateScreenshotsV2Params contains all the parameters to send to the API endpoint
for the update screenshots v2 operation typically these are written to a http.Request
*/
type UpdateScreenshotsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateScreenshotRequest
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithTimeout(timeout time.Duration) *UpdateScreenshotsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithContext(ctx context.Context) *UpdateScreenshotsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithHTTPClient(client *http.Client) *UpdateScreenshotsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithBody(body *ugcclientmodels.ModelsUpdateScreenshotRequest) *UpdateScreenshotsV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetBody(body *ugcclientmodels.ModelsUpdateScreenshotRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithContentID(contentID string) *UpdateScreenshotsV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithNamespace(namespace string) *UpdateScreenshotsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) WithUserID(userID string) *UpdateScreenshotsV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update screenshots v2 params
func (o *UpdateScreenshotsV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateScreenshotsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
